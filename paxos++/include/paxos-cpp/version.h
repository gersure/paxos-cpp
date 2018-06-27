#pragma once

#define PAXOS-CPP_VERSION_MAJOR 1
#define PAXOS-CPP_VERSION_MINOR 0
#define PAXOS-CPP_VERSION_FIXED 0
#define PAXOS-CPP_GIT_HASH__    

#define PAXOS-CPP_BUILD_TIME__  2018-06-27 09:22

#define _vstr_bind(str) #str
#define vstr_bind(str) _vstr_bind(str)

#define PAXOS-CPP_GIT_HASH      vstr_bind(PAXOS-CPP_GIT_HASH__)
#define PAXOS-CPP_BUILD_TIME    vstr_bind(PAXOS-CPP_BUILD_TIME__)
