#cmake file for libpaxos-cpp
#author changfa.zheng

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.12)
#project name

SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/paxos-cpp/libpaxos-cpp.a)

#add some options to control compile
option(WITH_SQLITE "build with sqlite" ON)
if(WITH_SQLITE)
  find_package(sqlite REQUIRED)#REQUIRED 如果包没找到，cmake过程会终止
  if(sqlite_FOUND)
    add_definitions(-DSQLITE)
    include_directories(${SQLITE_INCLUDE_DIR}})
    list(APPEND THIRDPARTY_LIBS ${SQLITE_LIBRARIES})
  endif()
endif()

set(THIRD_PARTH_DIR ${CMAKE_CURRENT_SOURCE_DIR}/third_party)

set(SOURCE_C
   client.cpp
   datastore.cpp
   )
set(SOURCE_S
   client.cpp
   datastore.cpp
   )

add_executable(client_L2 ${SOURCE_C})
target_link_libraries(client_L2 ${PAXOS_LIB})

add_executable(server_L2 ${SOURCE_S})
target_link_libraries(server_L2 ${PAXOS_LIB})

