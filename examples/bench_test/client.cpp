#include <iostream>
#include <chrono>
#include <thread>
#include <atomic>
#include <utility>
#include "paxos++/client.hpp"
#include "paxos++/util/timer.hpp"


void run_bench(paxos::client& client, std::atomic<long>& count, std::atomic<long>& err_count, std::atomic<bool>& end)
{
    while(!end){
        try{
            std::future <std::string> future = client.send ("foo");
            assert (future.get () == "bar");
            count++;
        }
        catch(std::exception e){
            err_count++;
        }
    }
}

//template<typename T, typename... TS>
//long print_bench(T& l1, TS&... args)
//{
//    return l1.load() + print_bench<T>(std::forward<TS&>(args)...);
//}
//
//template<typename T>
//long print_bench(T& atomic)
//{
//    return atomic.load();
//}




int main ()
{
   paxos::client client;
   client.add ({{"127.0.0.1", 1337},{"127.0.0.1", 1338},{"127.0.0.1", 1339}});
   std::atomic<bool> end(false);

   constexpr int con = 10;
   std::thread threads[con];


//   std::atomic<long> ato1(1),ato2(1),ato3(1),ato4(1),ato5(1),ato6(1),ato7(1),ato8(1);
//   std::cout<<"print bench:"<<print_bench(ato1, (ato2), (ato3))<<std::endl;

   std::atomic<long> ato(0);
   std::atomic<long> ato_err(0);
   for (int i=0; i< con; i++){
       threads[i] = std::thread(std::bind(run_bench, std::ref(client), std::ref(ato), std::ref(ato_err), std::ref(end)));
   }

   long total = 0, total_b = 0;
   while(true){
       Timer timer;
       std::this_thread::sleep_for(std::chrono::seconds(2));
       total_b = total;
       total = ato.load();
       std::cout<<"\tops:"<<((total-total_b)/(double)timer.elapsed())*1000<<"\terror:"<<ato_err.load()<<std::endl;
   }
}
