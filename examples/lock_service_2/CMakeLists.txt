#cmake file for libpaxos-cpp
#author changfa.zheng

SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/${LIB_NAME}/lib${LIB_NAME}.a)

include_directories(${PROJECT_SOURCE_DIR})

set(THIRDPARTY_LIBS "-lboost_thread -lpthread -lboost_serialization -lsqlite3 -llog4cxx")

#add some options to control compile
set(SOURCE_C
   client.cpp
   datastore.cpp
   )
set(SOURCE_S
   client.cpp
   datastore.cpp
   )

add_executable(client_L2 ${SOURCE_C})
target_link_libraries(client_L2 ${PAXOS_LIB} ${THIRDPARTY_LIBS})

add_executable(server_L2 ${SOURCE_S})
target_link_libraries(server_L2 ${PAXOS_LIB} ${THIRDPARTY_LIBS})

