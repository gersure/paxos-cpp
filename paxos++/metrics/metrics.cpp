#include "metrics.hpp"


Metrics::Metrics()
    : registry_(std::make_shared<Registry>()),
    paxos_guage_family_(BuildGuage().Name("paxos_guage").Help("paxos guage family").Register(*registry)),
    paxos_counter_family_(BuildGuage().Name("paxos_counter").Help("paxos counter family").Register(*registry)),
    paxos_size_histogram_family_(BuildHistogram().Name("paxos_size_hisgogram").Help("paxos value size histogram family").Register(*registry)),
    paxos_time_histogram_family_(BuildHistogram().Name("paxos_time_hisgogram").Help("paxos method time histogram family").Register(*registry)),
#define _mk_guage_init(lable, value, ...)  \
        name##value(paxos_guage_family_.Add({{name, value}})),
    _make_guage_label(_mk_guage_init)
#define _mk_counter_init(lable, value, ...)  \
        name##value(paxos_counter_family_.Add({{name, value}})),
    _make_counter_label(_mk_counter_init)
#define _mk_size_histogram_init(lable, value, ...)  \
        name##value(paxos_size_histogram_family_.Add({{name, value}}, Histogram::BucketBoundaries({__VA_ARGS__}))),
    _make_size_histogram_label(_mk_size_histogram_init)
#define _mk_time_histogram_init(lable, value, ...)  \
        name##value(paxos_time_histogram_family_.Add({{name, value}}, Histogram::BucketBoundaries({__VA_ARGS__}))),
    _make_time_histogram_label(_mk_time_histogram_init)

    dummy_(0)
{

}
