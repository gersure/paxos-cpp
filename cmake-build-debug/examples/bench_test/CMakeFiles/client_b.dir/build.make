# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zcf/clion-workspace/paxos-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug

# Include any dependencies generated for this target.
include examples/bench_test/CMakeFiles/client_b.dir/depend.make

# Include the progress variables for this target.
include examples/bench_test/CMakeFiles/client_b.dir/progress.make

# Include the compile flags for this target's objects.
include examples/bench_test/CMakeFiles/client_b.dir/flags.make

examples/bench_test/CMakeFiles/client_b.dir/client.cpp.o: examples/bench_test/CMakeFiles/client_b.dir/flags.make
examples/bench_test/CMakeFiles/client_b.dir/client.cpp.o: ../examples/bench_test/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/bench_test/CMakeFiles/client_b.dir/client.cpp.o"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client_b.dir/client.cpp.o -c /Users/zcf/clion-workspace/paxos-cpp/examples/bench_test/client.cpp

examples/bench_test/CMakeFiles/client_b.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_b.dir/client.cpp.i"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zcf/clion-workspace/paxos-cpp/examples/bench_test/client.cpp > CMakeFiles/client_b.dir/client.cpp.i

examples/bench_test/CMakeFiles/client_b.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_b.dir/client.cpp.s"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zcf/clion-workspace/paxos-cpp/examples/bench_test/client.cpp -o CMakeFiles/client_b.dir/client.cpp.s

# Object files for target client_b
client_b_OBJECTS = \
"CMakeFiles/client_b.dir/client.cpp.o"

# External object files for target client_b
client_b_EXTERNAL_OBJECTS =

examples/bench_test/client_b: examples/bench_test/CMakeFiles/client_b.dir/client.cpp.o
examples/bench_test/client_b: examples/bench_test/CMakeFiles/client_b.dir/build.make
examples/bench_test/client_b: paxos++/libpaxos++.a
examples/bench_test/client_b: examples/bench_test/CMakeFiles/client_b.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable client_b"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_b.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/bench_test/CMakeFiles/client_b.dir/build: examples/bench_test/client_b

.PHONY : examples/bench_test/CMakeFiles/client_b.dir/build

examples/bench_test/CMakeFiles/client_b.dir/clean:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test && $(CMAKE_COMMAND) -P CMakeFiles/client_b.dir/cmake_clean.cmake
.PHONY : examples/bench_test/CMakeFiles/client_b.dir/clean

examples/bench_test/CMakeFiles/client_b.dir/depend:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zcf/clion-workspace/paxos-cpp /Users/zcf/clion-workspace/paxos-cpp/examples/bench_test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/examples/bench_test/CMakeFiles/client_b.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/bench_test/CMakeFiles/client_b.dir/depend

