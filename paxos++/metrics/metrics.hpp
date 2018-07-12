#pragma once

#include "prometheus/exposer.h"
#include "prometheus/registry.h"
#include "util/singleton.h"

using namespace prometheus;

class Metrics : public Singletom<Metrics>
{
    Metrics();
public:
    void init(const std::string& addr);

#define _make_counter_label(val)   \
    val()


#define _make_guage_label(val)   \


#define _make_histogram_label(val)   \


private:
    Exposer  exposer_;
    Family<Guage>&       paxos_guage_family_;
    Family<Counter>&     paxos_counter_family_;
    Family<Histogram>&   paxos_histogram_family_;
};


