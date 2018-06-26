
SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/paxos-cpp/libpaxos-cpp.a)

set(SOURCES
   client.cpp
   server.cpp
   )

foreach(sourcefile ${SOURCES})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename}_I1 ${sourcefile})
    target_link_libraries(${exename}_I1 ${PAXOS_LIB})
endforeach(sourcefile ${BENCHMARKS})

