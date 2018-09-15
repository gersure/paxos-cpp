# Install script for directory: /Users/zcf/clion-workspace/paxos-cpp/paxos++

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/include/paxos++")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/client" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/client/request.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/client" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/client/initiate_request.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/client" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/client/client_view.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/server" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/server/server_view.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/util" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/util/view.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/server" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/server/server.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/request_queue" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/request_queue/queue.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/request_queue" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/request_queue/queue.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/factory.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/factory.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/request.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/request.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/strategy.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/factory_impl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/strategy" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/strategy/strategy_impl.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/util" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/util/conversion.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/util" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/util/conversion.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/util" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/util/debug.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/command.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/command.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/command_dispatcher.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/error.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/network" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/network/io_thread.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/network" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/network/parser.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/paxos_context.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/paxos_context.inl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/network" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/network/tcp_connection.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/detail/network" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/detail/network/tcp_connection_fwd.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/durable" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/durable/heap.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/durable" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/durable/storage.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/metrics" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/metrics/metrics.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/util" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/util/singleton.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++/exception" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/exception/exception.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/client.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/configuration.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/paxos++" TYPE FILE FILES "/Users/zcf/clion-workspace/paxos-cpp/paxos++/server.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/paxos++/libpaxos++.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaxos++.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaxos++.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaxos++.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/paxos++" TYPE FILE FILES
    "/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/paxos++/paxos++Config.cmake"
    "/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/paxos++/paxos++ConfigVersion.cmake"
    )
endif()

