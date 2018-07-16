
SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/${LIB_NAME}/lib${LIB_NAME}.a)

include_directories(${PROJECT_SOURCE_DIR})

set(THIRDPARTY_LIBS "-lboost_thread -lpthread -lboost_serialization -llog4cxx")

set(SOURCES
   client.cpp
   server_1337.cpp
   server_1338.cpp
   server_1339.cpp
   )

foreach(sourcefile ${SOURCES})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename}_b ${sourcefile})
    target_link_libraries(${exename}_b ${PAXOS_LIB} ${THIRDPARTY_LIBS})
endforeach(sourcefile ${SOURCES})

