#cmake file for libpaxos-cpp
#author changfa.zheng

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.12)
#project name

set(PROJECT_NAME paxos-cpp)
string(TOUPPER ${PROJECT_NAME} PROJECT_NAME_UP)
message(STATUS ${PROJECT_NAME_UP})

PROJECT(${PROJECT_NAME})

set(${PROJECT_NAME_UP}_VERSION_MAJOR 1)
set(${PROJECT_NAME_UP}_VERSION_MINOR 0)
set(${PROJECT_NAME_UP}_VERSION_FIXED 0)
set(${PROJECT_NAME_UP}_VERSION ${${PROJECT_NAME_UP}_VERSION_MAJOR}.${${PROJECT_NAME_UP}_VERSION_MINOR}.${${PROJECT_NAME_UP}_VERSION_FIXED})

#add some options to control compile
option(WITH_SQLITE "build with sqlite" OFF)
if(WITH_SQLITE)
  find_package(sqlite REQUIRED)#REQUIRED 如果包没找到，cmake过程会终止
  if(sqlite_FOUND)
    add_definitions(-DSQLITE)
    include_directories(${SQLITE_INCLUDE_DIR}})
    list(APPEND THIRDPARTY_LIBS ${SQLITE_LIBRARIES})
  endif()
endif()

# auto make version and build time message
string(TIMESTAMP ${PROJECT_NAME_UP}_BUILD_TIME "%Y-%m-%d %H:%M" UTC)

find_package(Git)
if(GIT_FOUND AND EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/.git")
  if(WIN32)
    #execute_process(COMMAND $ENV{COMSPEC} /C ${GIT_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} rev-parse HEAD OUTPUT_VARIABLE 
    #execute_process(COMMAND $ENV{COMSPEC} /C ${GIT_EXECUTABLE} rev-parse HEAD OUTPUT_VARIABLE ${PROJECT_NAME_UP}_GIT_SHA)
  else()
    #execute_process(COMMAND ${GIT_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} rev-parse HEAD OUTPUT_VARIABLE ${PROJECT_NAME_UP}_GIT_SHA)
    execute_process(COMMAND ${GIT_EXECUTABLE} rev-parse HEAD OUTPUT_VARIABLE ${PROJECT_NAME_UP}_GIT_SHA)
  endif()
else()
  set(${PROJECT_NAME_UP}_GIT_SHA 0)
endif()
string(REGEX REPLACE "[^0-9a-f]+" "" ${PROJECT_NAME_UP}_GIT_SHA "${${PROJECT_NAME_UP}_GIT_SHA}")

message(STATUS "\tversion: ${${PROJECT_NAME_UP}_VERSION_MAJOR}.${${PROJECT_NAME_UP}_VERSION_MINOR}.${${PROJECT_NAME_UP}_VERSION_FIXED}\n\tgit hash: ${${PROJECT_NAME_UP}_GIT_HASH}\n\tbuild time: ${${PROJECT_NAME_UP}_BUILD_TIME}")
configure_file (
                "${PROJECT_SOURCE_DIR}/version.h.in"
                "${PROJECT_SOURCE_DIR}/include/${PROJECT_NAME}/version.h"
                @ONLY )

###########################################################################
#pragma once

#define PAXOS-CPP_VERSION_MAJOR @PAXOS-CPP_VERSION_MAJOR@
#define PAXOS-CPP_VERSION_MINOR @PAXOS-CPP_VERSION_MINOR@
#define PAXOS-CPP_VERSION_FIXED @PAXOS-CPP_VERSION_FIXED@
#define PAXOS-CPP_GIT_HASH__    @PAXOS-CPP_GIT_HASH@

#define PAXOS-CPP_BUILD_TIME__  @PAXOS-CPP_BUILD_TIME@

#define _vstr_bind(str) #str
#define vstr_bind(str) _vstr_bind(str)

#define PAXOS-CPP_GIT_HASH      vstr_bind(PAXOS-CPP_GIT_HASH__)
#define PAXOS-CPP_BUILD_TIME    vstr_bind(PAXOS-CPP_BUILD_TIME__)

###########################################################################

set(THIRD_PARTH_DIR ${CMAKE_CURRENT_SOURCE_DIR}/third_party)

#when use protobuf, to make protoc file
#set(PROTOBUF_PATH ${THIRD_PARTH_DIR}/protobuf)
#
#add_custom_command(OUTPUT  ekv.pb.h ekv.pb.cc ekv.grpc.pb.h ekv.grpc.pb.cc
#  COMMAND ${PROTOBUF_PATH}/bin/protoc ARGS --cpp_out . ${CMAKE_CURRENT_SOURCE_DIR}/ekv.proto -I${CMAKE_CURRENT_SOURCE_DIR}
#  COMMAND ${PROTOBUF_PATH}/bin/protoc ARGS --grpc_out . --plugin=protoc-gen-grpc=${THIRD_PARTH_DIR}/grpc/bin/grpc_cpp_plugin 
#  COMMAND ${PROTOBUF_PATH}/bin/protoc ARGS --grpc_out . --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` #${CMAKE_CURRENT_SOURCE_DIR}/ekv.proto -I${CMAKE_CURRENT_SOURCE_DIR}
#  DEPENDS ekv.proto
#  VERBATIM )
#add_custom_target(ekvserver_proto DEPENDS  ekv.pb.h ekv.pb.cc ekv.grpc.pb.h ekv.grpc.pb.cc)

if(MSVC)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Zi /nologo /EHsc /GS /Gd /GR /GF /fp:precise /Zc:wchar_t /Zc:forScope /errorReport:queue")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /FC /d2Zi+ /W4 /wd4127 /wd4800 /wd4996 /wd4351 /wd4100 /wd4204 /wd4324")
else()
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -W -Wextra -Wall")
  #set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wsign-compare -Wshadow -Wno-unused-parameter -Wno-unused-variable -Woverloaded-virtual -Wnon-virtual-dtor -Wno-missing-field-initializers -Wno-strict-aliasing")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wsign-compare -Wno-unused-parameter -Wno-unused-variable -Woverloaded-virtual -Wnon-virtual-dtor -Wno-missing-field-initializers -Wno-strict-aliasing")
  if(MINGW)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-format")
  endif()
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  if(NOT CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2 -fno-omit-frame-pointer")
    include(CheckCXXCompilerFlag)
    CHECK_CXX_COMPILER_FLAG("-momit-leaf-frame-pointer" HAVE_OMIT_LEAF_FRAME_POINTER)
    if(HAVE_OMIT_LEAF_FRAME_POINTER)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -momit-leaf-frame-pointer")
    endif()
  endif()
endif()



set(SOURCES
    paxos++/detail/client/protocol/initiate_request.cpp
    paxos++/detail/quorum/client_view.cpp
    paxos++/detail/quorum/server_view.cpp
    paxos++/detail/quorum/view.cpp
    paxos++/detail/quorum/server.cpp
    paxos++/detail/strategy/basic_paxos/factory.cpp
    paxos++/detail/strategy/basic_paxos/protocol/strategy.cpp
    paxos++/detail/command.cpp
    paxos++/detail/command_dispatcher.cpp
    paxos++/detail/error.cpp
    paxos++/detail/io_thread.cpp
    paxos++/detail/parser.cpp
    paxos++/detail/paxos_context.cpp
    paxos++/detail/tcp_connection.cpp
    paxos++/durable/heap.cpp
    paxos++/durable/storage.cpp
    paxos++/client.cpp
    paxos++/configuration.cpp
    paxos++/server.cpp
   )

if(WITH_SQLITE)
    list(APPEND SOURCES paxos++/durable/sqlite.cpp)
endif()

set(${PROJECT_NAME_UP}_STATIC_LIB ${PROJECT_NAME}${ARTIFACT_SUFFIX})
set(${PROJECT_NAME_UP}_SHARED_LIB ${PROJECT_NAME}-shared${ARTIFACT_SUFFIX})
set(${PROJECT_NAME_UP}_IMPORT_LIB ${${PROJECT_NAME}_SHARED_LIB})

add_library(${${PROJECT_NAME_UP}_SHARED_LIB} SHARED ${SOURCES})
target_link_libraries(${${PROJECT_NAME_UP}_SHARED_LIB}  ${THIRDPARTY_LIBS})
set_target_properties(${${PROJECT_NAME_UP}_SHARED_LIB} PROPERTIES
                      LINKER_LANGUAGE CXX
                      VERSION ${${PROJECT_NAME_UP}_VERSION}
                      SOVERSION ${${PROJECT_NAME_UP}_VERSION_MAJOR}
                      CXX_STANDARD 11
                      OUTPUT_NAME ${PROJECT_NAME})

add_library(${${PROJECT_NAME_UP}_STATIC_LIB} STATIC ${SOURCES})
target_link_libraries(${${PROJECT_NAME_UP}_STATIC_LIB}  ${THIRDPARTY_LIBS})

#add_executable(${PROJECT_NAME} ${SOURCES})
#target_link_libraries(${PROJECT_NAME}  ${THIRDPARTY_LIBS})


# Installation and packaging

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    # Change default installation prefix on Linux to /usr
    set(CMAKE_INSTALL_PREFIX /usr CACHE PATH "Install path prefix, prepended onto install directories." FORCE)
  endif()
endif()

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(package_config_destination ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME})

configure_package_config_file(
  ${CMAKE_CURRENT_LIST_DIR}/cmake/${PROJECT_NAME}Config.cmake.in ${PROJECT_NAME}Config.cmake
  INSTALL_DESTINATION ${package_config_destination}
)

write_basic_package_version_file(
  ${PROJECT_NAME}ConfigVersion.cmake
  VERSION ${${PROJECT_NAME_UP}_VERSION}
  COMPATIBILITY SameMajorVersion
)

#ARCHIVE特指静态库，LIBRARY特指动态库，RUNTIME
install(DIRECTORY include/${PROJECT_NAME} COMPONENT devel DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}")

install(
  TARGETS ${${PROJECT_NAME_UP}_STATIC_LIB}
  EXPORT ${PROJECT_NAME}Targets
  COMPONENT devel
  ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
  INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
)

install(
  TARGETS ${${PROJECT_NAME_UP}_SHARED_LIB}
  EXPORT ${PROJECT_NAME}Targets
  COMPONENT runtime
  RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
  LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
  INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
)

#install(
#  TARGETS ${PROJECT_NAME}
#  EXPORT ${PROJECT_NAME}Targets
#  COMPONENT devel
#  RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
#  INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
#)
#
#install(
#  EXPORT ${PROJECT_NAME}Targets
#  COMPONENT devel
#  DESTINATION ${package_config_destination}
#  NAMESPACE ${PROJECT_NAME}::
#)


install(
  FILES
  ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
  ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
  COMPONENT devel
  DESTINATION ${package_config_destination}
)

option(WITH_TESTS "build with tests" OFF)
if(WITH_TESTS)


  find_package(gtest REQUIRED)#REQUIRED 如果包没找到，cmake过程会终止
  if(gtest_FOUND)
    add_definitions(-DGTEST)
    include_directories(${GTEST_INCLUDE_DIR}})
    list(APPEND TEST_LIBS ${GTEST_LIBRARIES})
  endif()
  find_package(benchmark REQUIRED)#REQUIRED 如果包没找到，cmake过程会终止
  if(benchmark_FOUND)
    add_definitions(-DBENCHMARK)
    include_directories(${BENCHMARK_INCLUDE_DIR}})
    list(APPEND TEST_LIBS ${BENCHMARK_LIBRARIES})
  endif()

  set(TESTS
  )

 foreach(sourcefile ${TESTS})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename} ${sourcefile})
    target_link_libraries(${exename} ${TEST_LIBS})
  endforeach(sourcefile ${BENCHMARKS})

 set(BENCHMARKS
        bench/demo_bench.cc
 ) 

 foreach(sourcefile ${BENCHMARKS})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename} ${sourcefile})
    target_link_libraries(${exename} ${TEST_LIBS})
  endforeach(sourcefile ${BENCHMARKS})
endif()

#add_subdirectory(test)

#define macro
#macro(compile_benchmark_test name)
#  add_executable(${name} "${name}.cc")
#  target_link_libraries(${name} ${LIBS})
#endmacro(compile_benchmark_test)
