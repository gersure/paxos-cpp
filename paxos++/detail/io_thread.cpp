#include <functional>

#include "io_thread.hpp"


namespace paxos { namespace detail {


io_thread::io_thread ()
   : work_ (io_service_)
{
}

void
io_thread::launch ()
{
//   thread_ = std::move (
//      boost::thread (std::bind (&io_thread::run,
//                                this)));
    for(int i=0; i<10; i++)
        threads_.push_back(std::shared_ptr<boost::thread>(new boost::thread(std::bind(&io_thread::run, this))));
}

void
io_thread::run ()
{
   io_service_.run ();
}


void
io_thread::join ()
{
   //thread_.join ();
   for(auto& pthread : threads_)
       pthread->join();
}

void
io_thread::stop ()
{
   io_service_.stop ();
}

boost::asio::io_service &
io_thread::io_service ()
{
   return io_service_;
}


}; };
