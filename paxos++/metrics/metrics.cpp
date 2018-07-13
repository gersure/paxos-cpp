#include "metrics.hpp"


Metrics::Metrics()
    : registry_(std::make_shared<Registry>()),
    paxos_gauge_family_(BuildGauge().Name("paxos_gauge").Help("paxos gauge family").Register(*registry_)),
    paxos_counter_family_(BuildCounter().Name("paxos_counter").Help("paxos counter family").Register(*registry_)),
    paxos_size_histogram_family_(BuildHistogram().Name("paxos_size_hisgogram").Help("paxos value size histogram family").Register(*registry_)),
    paxos_time_histogram_family_(BuildHistogram().Name("paxos_time_hisgogram").Help("paxos method time histogram family").Register(*registry_)),
#define _mk_gauge_init(label, value, ...)  \
        gauge_##label##_##value(paxos_gauge_family_.Add({{#label, #value}})),
    _make_gauge_label(_mk_gauge_init)
#define _mk_counter_init(label, value, ...)  \
        counter_##label##_##value(paxos_counter_family_.Add({{#label, #value}})),
    _make_counter_label(_mk_counter_init)
#define _mk_size_histogram_init(label, value, ...)  \
        hsize_##label##_##value(paxos_size_histogram_family_.Add({{#label, #value}}, Histogram::BucketBoundaries({__VA_ARGS__}))),
    _make_size_histogram_label(_mk_size_histogram_init)
#define _mk_time_histogram_init(label, value, ...)  \
        htime_##label##_##value(paxos_time_histogram_family_.Add({{#label, #value}}, Histogram::BucketBoundaries({__VA_ARGS__}))),
    _make_time_histogram_label(_mk_time_histogram_init)

    dummy_(0)
{

}
