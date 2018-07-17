/*!
  Copyright (c) 2012, Leon Mergen, all rights reserved.
 */

#ifndef LIBPAXOS_CPP_SERVER_HPP
#define LIBPAXOS_CPP_SERVER_HPP

#include <stdint.h>
#include <string>

#include <boost/asio/ip/tcp.hpp>

#include "detail/strategy/basic_paxos/factory.hpp"

#include "detail/io_thread.hpp"
#include "detail/paxos_context.hpp"
#include "detail/quorum/server_view.hpp"
#include "detail/tcp_connection_fwd.hpp"

#include "configuration.hpp"

namespace paxos {

/*!
  \brief Provides server-side interface to the Paxos quorum

  The server class provides the core functionality for servers within the paxos quorum. It
  opens a listening socket, handles incoming connections and maintains a state of all remote
  servers inside the quorum. It can be elected as a leader, and automatically handles failover
  in case another leader fails.



  \par Thread Safety
  \e Distinct \e objects: Safe\n
  \e Shared \e objects: Unsafe\n

  \par Examples

  Let the server maintain its own thread of control in a single-server quorum and
  setup a processing function that just sends the input back.

  \code{.cpp}

  paxos::server server ("127.0.0.1", 1337,
                        [] (int64_t proposal_id, std::string const & input) -> std::string
                        {
                            return input;
                        });
  server.add ({{"127.0.0.1", 1337}});

  \endcode

  Setup three different servers with that share the same io_service, and thus can
  share the same thread:

  \code{.cpp}

  paxos::server::callback_type callback = [] (int64_t proposal_id, std::string const & input) -> std::string
                                          {
                                             return output;
                                          });

  boost::asio::io_service io_service;

  // This prevents the io_service from running out of work
  boost::asio::io_service::work work (io_service);

  // Launch new thread in the background which calls io_service.run ()
  boost::thread io_thread (boost::bind (&boost::asio::io_service::run,
                                        &io_service));

  // Note that we share the same io_service here, and thus all servers share the same
  // worker thread.
  paxos::server server1 (io_service, "127.0.0.1", 1337, callback);
  paxos::server server2 (io_service, "127.0.0.1", 1338, callback);
  paxos::server server3 (io_service, "127.0.0.1", 1339, callback);

  server1.add ({{"127.0.0.1", 1337}, {"127.0.0.1", 1338}, {"127.0.0.1", 1339}});
  server2.add ({{"127.0.0.1", 1337}, {"127.0.0.1", 1338}, {"127.0.0.1", 1339}});
  server3.add ({{"127.0.0.1", 1337}, {"127.0.0.1", 1338}, {"127.0.0.1", 1339}});

  \endcode


 */
class server
{
public:

   /*!
     \brief Callback function that is passed to the paxos::server constructor
     \param proposal_id Uniquely identifies the current proposal. This number is guaranteed to increment
                        between succeeding calls to this function and can be regarded as a form of a
                        version number. For more information on why this parameter is passed and what you
                        can do with it, see the [link libpaxos_cpp.eventual_consistency documentation
                        about eventual consistency].

     \param message The message that is sent from the client. Note that, although we use a std::string as
                    the data type that holds the message, this data is binary safe. A std::string is used more
                    as a convenience since most data serialization libraries allow one to directly generate
                    a std::string representation of the data.

     \returns The output that should be returned to the client.

     When you set up a Paxos quorum, you can send one command from a paxos::client, and have that same
     command arrive at all the paxos::server instances within the quorum. Your ultimate intention is the
     process that command at all the servers and return a return value from all your servers to the client.

     This means that you need to be able to hook a processing function inside the servers. We do
     this by providing a callback function to the servers, with the following signature:

     \code{.cpp}
     std::string callback (int64_t proposal_id, std::string const & message);
     \endcode


     \par Requirements
     The callback function has several requirements:

     \li It should return the same result for the same message processed at all the different servers.
     In other words, if server1 replies to a message "foo" with result "bar", server2 must reply with
     the same result "bar". If not, a paxos::exception::inconsistent_response exception is thrown at
     the client.

     \li It should never throw an exception. If an exception is thrown, the Paxos instance will
     abort the program.

   */
   typedef boost::function <std::string (int64_t proposal_id, std::string const & message)> callback_type;

public:

   /*!
     \brief Opens socket to listen on port
     \param server        IPv4 or IPv6 address we're listening at for new connections
     \param port          Port we're listening at to new connections
     \param callback      Callback used to process workload
     \param configuration (Optional) Runtime configuration

     This constructor launches its own background thread with i/o context.
   */
   server (
      std::string const &               server,
      uint16_t                          port,
      callback_type const &             callback);

   /*!
     \brief Opens socket to listen on port
     \param server        IPv4 or IPv6 address we're listening at for new connections
     \param port          Port we're listening at to new connections
     \param callback      Callback used to process workload
     \param configuration (Optional) Runtime configuration

     This constructor launches its own background thread with i/o context.
   */
   server (
      std::string const &               server,
      uint16_t                          port,
      callback_type const &             callback,
      paxos::configuration &            configuration);

   /*!
     \brief Opens socket to listen on port
     \param io_service    Boost.Asio io_service object, which represents the link to the OS'es i/o services
     \param server        IPv4 or IPv6 address we're listening at for new connections
     \param port          Port we're listening at to new connections
     \param callback      Callback used to process workload
     \param configuration (Optional) Runtime configuration
   */
   server (
      boost::asio::io_service &         io_service,
      std::string const &               server,
      uint16_t                          port,
      callback_type const &             callback);

   /*!
     \brief Opens socket to listen on port
     \param io_service    Boost.Asio io_service object, which represents the link to the OS'es i/o services
     \param server        IPv4 or IPv6 address we're listening at for new connections
     \param port          Port we're listening at to new connections
     \param callback      Callback used to process workload
     \param configuration (Optional) Runtime configuration
   */
   server (
      boost::asio::io_service &         io_service,
      std::string const &               server,
      uint16_t                          port,
      callback_type const &             callback,
      paxos::configuration &            configuration);

   /*!
     \brief Destructor

     Gracefully closes the background io thread, if any.
    */
   ~server ();

   /*!
     \brief Adds server to quorum registered the server is part of
     \param server      IPv4 address, IPv6 address or hostname of server to connect to
     \param port        Port of server to connect to
    */
   void
   add (
      std::string const &                       server,
      uint16_t                                  port);

   /*!
     \brief Helper function of add (), which adds a whole list at once
     \param servers List of pairs of server/ports to connect to
    */
   void
   add (
      std::initializer_list <std::pair <std::string, uint16_t> > const &        servers);

   /*!
     \brief Blocks until internal worker thread has stoppped

     This function blocks until the internal worker thread stops, which should never occur. It
     is useful to let the main () thread block forever.

     \note This function will return immediately when  an external worker thread is used
           to control the boost::asio::io_service object
    */
   void
   wait ();

   /*!
     \brief Stops listening for new connections, closes all existing connections and stops
            the background thread (if any)
    */
   void
   stop ();

private:

   void
   accept ();

   void
   handle_accept (
      detail::tcp_connection_ptr        new_connection,
      boost::system::error_code const & error);

private:
   callback_type                        processor_;
   paxos::configuration                 default_configuration_;
   detail::io_thread                    io_thread_;
   boost::asio::ip::tcp::acceptor       acceptor_;
   detail::quorum::server_view          quorum_;
   detail::paxos_context                state_;
};

}

#endif  //! LIBPAXOS_CPP_SERVER_HPP
