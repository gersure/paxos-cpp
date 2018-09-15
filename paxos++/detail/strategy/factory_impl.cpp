#include "../../configuration.hpp"

#include "strategy_impl.hpp"
#include "factory_impl.hpp"

namespace paxos { namespace detail { namespace strategy { namespace basic_paxos {

factory_impl::factory_impl (
   paxos::configuration &       configuration)
   : configuration_ (configuration)
{
}

/*! virtual */ strategy *
factory_impl::create () const
{
   return new protocol::strategy_impl (configuration_.durable_storage ());
}

}; }; }; };
