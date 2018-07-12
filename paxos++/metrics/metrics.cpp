#include "metrics.hpp"


Metrics::Metrics()
    : registry_(std::make_shared<Registry>()),
    paxos_guage_family_(BuildGuage().Name("paxos_grage").Help("paxos guage family").Register(*registry)),
    paxos_counter_family_(BuildGuage().Name("paxos_counter").Help("paxos counter family").Register(*registry)),
    paxos_guage_family_(BuildHistogram().Name("paxos_hisgogram").Help("paxos histogram family").Register(*registry)),
{

}
