# paxos-cpp
paxos
v2.0.0
    * paxos-context 其实就是一个instance，
      需要instance并发，instance共享一个发送queue
    * 网络需要有一个接收队列，一个发送线程，一个接收线程
      所有发送和接收都走统一接口
    * paxos-context中用proposer_id和logid来区分哪一个
    * storage中需要记的是logid，另外找个地方记一下proposerid
