#cmake file for libpaxos-cpp
#author changfa.zheng

SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/${LIB_NAME}/lib${LIB_NAME}.a)

include_directories(${PROJECT_SOURCE_DIR})

set(THIRDPARTY_LIBS "-lboost_thread -lpthread -lboost_serialization")

set(SOURCES
   client.cpp
   server.cpp
   )

foreach(sourcefile ${SOURCES})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename}_l1 ${sourcefile})
    target_link_libraries(${exename}_l1 ${PAXOS_LIB} ${THIRDPARTY_LIBS})
endforeach(sourcefile ${SOURCES})

