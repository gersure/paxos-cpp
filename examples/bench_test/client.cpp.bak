#include <iostream>
#include <chrono>
#include "paxos++/client.hpp"


class Timer
{
public:
  Timer() : m_begin(std::chrono::high_resolution_clock::now()) {}
  void reset() { m_begin = std::chrono::high_resolution_clock::now(); }
  //默认输出毫秒
  int64_t elapsed() const
  {
    return std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
  //微秒
  int64_t elapsed_micro() const
  {
    return std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
  //纳秒
  int64_t elapsed_nano() const
  {
    return std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
  //秒
  int64_t elapsed_seconds() const
  {
    return std::chrono::duration_cast<std::chrono::seconds>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
  //分
  int64_t elapsed_minutes() const
  {
    return std::chrono::duration_cast<std::chrono::minutes>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
  //时
  int64_t elapsed_hours() const
  {
    return std::chrono::duration_cast<std::chrono::hours>(std::chrono::high_resolution_clock::now() - m_begin).count();
  }
private:
  std::chrono::time_point<std::chrono::high_resolution_clock> m_begin;

}; // timer

int main ()
{
   paxos::client client;
   client.add ("127.0.0.1", 1337);
   constexpr int COUNTS=1000;
   int i = 0, j=COUNTS, err_count=0;
   Timer timer;
   while(j--){
       try{
           std::future <std::string> future = client.send ("foo");
           assert (future.get () == "bar");
           i++;
           if (j == (COUNTS-2))
               timer.reset();
       }
       catch(std::exception e){
           err_count++;
           std::cout<<"err:"<<e.what()<<"\t:"<<timer.elapsed()<<"ms"<<std::endl;;
       }
   }
   double ops=(COUNTS/(double)timer.elapsed())*1000;
   std::cout<<"ops:"<<ops<<"\terrors:"<<err_count<<std::endl;
}
