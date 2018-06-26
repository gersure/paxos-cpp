#cmake file for libpaxos-cpp
#author changfa.zheng


SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/paxos-cpp/libpaxos-cpp.a)

set(SOURCE
   client.cpp
   server.cpp
   )

foreach(sourcefile ${SOURCES})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename}_L1 ${sourcefile})
    target_link_libraries(${exename}_L1 ${PAXOS_LIB})
endforeach(sourcefile ${BENCHMARKS})

