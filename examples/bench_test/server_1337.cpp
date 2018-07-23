#include "paxos++/server.hpp"

int main ()
{
    try{
   paxos::server server ("127.0.0.1", 1337,
                         [](int64_t proposal_id, std::string const &) -> std::string
                         {
                            return "bar";
                         });

   server.add ("127.0.0.1", 1337);
   server.add ("127.0.0.1", 1338);
   server.add ("127.0.0.1", 1339);
   server.wait ();
    }catch(std::exception& e){
        std::cout<<e.what()<<std::endl;
    }
}
