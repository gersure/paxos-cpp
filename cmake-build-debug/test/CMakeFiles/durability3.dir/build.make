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
include test/CMakeFiles/durability3.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/durability3.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/durability3.dir/flags.make

test/CMakeFiles/durability3.dir/durability3.cpp.o: test/CMakeFiles/durability3.dir/flags.make
test/CMakeFiles/durability3.dir/durability3.cpp.o: ../test/durability3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/durability3.dir/durability3.cpp.o"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/durability3.dir/durability3.cpp.o -c /Users/zcf/clion-workspace/paxos-cpp/test/durability3.cpp

test/CMakeFiles/durability3.dir/durability3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/durability3.dir/durability3.cpp.i"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zcf/clion-workspace/paxos-cpp/test/durability3.cpp > CMakeFiles/durability3.dir/durability3.cpp.i

test/CMakeFiles/durability3.dir/durability3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/durability3.dir/durability3.cpp.s"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zcf/clion-workspace/paxos-cpp/test/durability3.cpp -o CMakeFiles/durability3.dir/durability3.cpp.s

# Object files for target durability3
durability3_OBJECTS = \
"CMakeFiles/durability3.dir/durability3.cpp.o"

# External object files for target durability3
durability3_EXTERNAL_OBJECTS =

test/durability3: test/CMakeFiles/durability3.dir/durability3.cpp.o
test/durability3: test/CMakeFiles/durability3.dir/build.make
test/durability3: paxos++/libpaxos++.a
test/durability3: test/CMakeFiles/durability3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable durability3"
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/durability3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/durability3.dir/build: test/durability3

.PHONY : test/CMakeFiles/durability3.dir/build

test/CMakeFiles/durability3.dir/clean:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/durability3.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/durability3.dir/clean

test/CMakeFiles/durability3.dir/depend:
	cd /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zcf/clion-workspace/paxos-cpp /Users/zcf/clion-workspace/paxos-cpp/test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test /Users/zcf/clion-workspace/paxos-cpp/cmake-build-debug/test/CMakeFiles/durability3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/durability3.dir/depend

