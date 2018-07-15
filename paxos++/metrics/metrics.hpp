#pragma once


#include "prometheus/exposer.h"
#include "prometheus/registry.h"
#include "../util/singleton.hpp"

using namespace prometheus;

class Metrics : public Singleton<Metrics>
{
    Metrics();
public:
    void init(const std::string& addr);

#define _make_gauge_label(val)      \

#define _make_counter_label(val)    \
    val(method, prepare)            \
    val(method, accept)             \

#define _make_size_histogram_label(val)     \
    val(method, prepare, 1024, 5120, 10240, 102400, 1024000, 10240000)  \

#define _make_time_histogram_label(val)   \
    val(method, prepare, 1, 3, 5, 10, 20, 30, 40, 50, 70, 100, 150, 200, 500, 1000, 3000, 5000, 10000)  \
    val(method, accept,  1, 3, 5, 10, 20, 30, 40, 50, 70, 100, 150, 200, 500, 1000, 3000, 5000, 10000)  \

private:
    std::shared_ptr<Exposer>  exposer_;
    std::shared_ptr<Registry> registry_;
    Family<Gauge>&       paxos_gauge_family_;
    Family<Counter>&     paxos_counter_family_;
    Family<Histogram>&   paxos_size_histogram_family_;
    Family<Histogram>&   paxos_time_histogram_family_;

#define _make_gauge_values(label, value, ...)   \
    Gauge& gauge_##label##_##value;
    _make_gauge_label(_make_gauge_values)
#define _make_counter_values(label, value, ...)   \
    Counter& counter_##label##_##value;
    _make_counter_label(_make_counter_values)

#define _make_size_histogram_values(label, value, ...)   \
    Histogram& hsize_##label##_##value;
    _make_size_histogram_label(_make_size_histogram_values)
#define _make_time_histogram_values(label, value, ...)   \
    Histogram& htime_##label##_##value;
    _make_time_histogram_label(_make_time_histogram_values)

    int dummy_;
};


