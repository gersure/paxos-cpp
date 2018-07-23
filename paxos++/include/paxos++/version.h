#pragma once

#define PAXOS++_VERSION_MAJOR 1
#define PAXOS++_VERSION_MINOR 0
#define PAXOS++_VERSION_FIXED 0
#define PAXOS++_GIT_HASH__    

#define PAXOS++_BUILD_TIME__  2018-07-20 06:06

#define _vstr_bind(str) #str
#define vstr_bind(str) _vstr_bind(str)

#define PAXOS++_GIT_HASH      vstr_bind(PAXOS++_GIT_HASH__)
#define PAXOS++_BUILD_TIME    vstr_bind(PAXOS++_BUILD_TIME__)
