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
include test/CMakeFiles/connection_close2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/connection_close2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/connection_close2.dir/flags.make

test/CMakeFiles/connection_close2.dir/connection_close2.cpp.o: test/CMakeFiles/connection_close2.dir/flags.make
test/CMakeFiles/connection_close2.dir/connection_close2.cpp.o: ../test/connection_close2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/connection_close2.dir/connection_close2.cpp.o"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/connection_close2.dir/connection_close2.cpp.o -c /Users/zcf/clion-workspace/paxos-cpp/test/connection_close2.cpp

test/CMakeFiles/connection_close2.dir/connection_close2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/connection_close2.dir/connection_close2.cpp.i"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zcf/clion-workspace/paxos-cpp/test/connection_close2.cpp > CMakeFiles/connection_close2.dir/connection_close2.cpp.i

test/CMakeFiles/connection_close2.dir/connection_close2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/connection_close2.dir/connection_close2.cpp.s"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zcf/clion-workspace/paxos-cpp/test/connection_close2.cpp -o CMakeFiles/connection_close2.dir/connection_close2.cpp.s

# Object files for target connection_close2
connection_close2_OBJECTS = \
"CMakeFiles/connection_close2.dir/connection_close2.cpp.o"

# External object files for target connection_close2
connection_close2_EXTERNAL_OBJECTS =

test/connection_close2: test/CMakeFiles/connection_close2.dir/connection_close2.cpp.o
test/connection_close2: test/CMakeFiles/connection_close2.dir/build.make
test/connection_close2: paxos++/libpaxos++.a
test/connection_close2: test/CMakeFiles/connection_close2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable connection_close2"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/connection_close2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/connection_close2.dir/build: test/connection_close2

.PHONY : test/CMakeFiles/connection_close2.dir/build

test/CMakeFiles/connection_close2.dir/clean:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/connection_close2.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/connection_close2.dir/clean

test/CMakeFiles/connection_close2.dir/depend:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zcf/clion-workspace/paxos-cpp /Users/zcf/clion-workspace/paxos-cpp/test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test/CMakeFiles/connection_close2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/connection_close2.dir/depend

