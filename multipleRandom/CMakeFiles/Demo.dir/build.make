# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nvidia/share/cmake/multipleRandom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/share/cmake/multipleRandom

# Include any dependencies generated for this target.
include CMakeFiles/Demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Demo.dir/flags.make

CMakeFiles/Demo.dir/hello.cpp.o: CMakeFiles/Demo.dir/flags.make
CMakeFiles/Demo.dir/hello.cpp.o: hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/share/cmake/multipleRandom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Demo.dir/hello.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Demo.dir/hello.cpp.o -c /home/nvidia/share/cmake/multipleRandom/hello.cpp

CMakeFiles/Demo.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Demo.dir/hello.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/share/cmake/multipleRandom/hello.cpp > CMakeFiles/Demo.dir/hello.cpp.i

CMakeFiles/Demo.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Demo.dir/hello.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/share/cmake/multipleRandom/hello.cpp -o CMakeFiles/Demo.dir/hello.cpp.s

CMakeFiles/Demo.dir/hello.cpp.o.requires:

.PHONY : CMakeFiles/Demo.dir/hello.cpp.o.requires

CMakeFiles/Demo.dir/hello.cpp.o.provides: CMakeFiles/Demo.dir/hello.cpp.o.requires
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/hello.cpp.o.provides.build
.PHONY : CMakeFiles/Demo.dir/hello.cpp.o.provides

CMakeFiles/Demo.dir/hello.cpp.o.provides.build: CMakeFiles/Demo.dir/hello.cpp.o


# Object files for target Demo
Demo_OBJECTS = \
"CMakeFiles/Demo.dir/hello.cpp.o"

# External object files for target Demo
Demo_EXTERNAL_OBJECTS =

Demo: CMakeFiles/Demo.dir/hello.cpp.o
Demo: CMakeFiles/Demo.dir/build.make
Demo: mylib/libmylib.a
Demo: CMakeFiles/Demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/share/cmake/multipleRandom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Demo.dir/build: Demo

.PHONY : CMakeFiles/Demo.dir/build

CMakeFiles/Demo.dir/requires: CMakeFiles/Demo.dir/hello.cpp.o.requires

.PHONY : CMakeFiles/Demo.dir/requires

CMakeFiles/Demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Demo.dir/clean

CMakeFiles/Demo.dir/depend:
	cd /home/nvidia/share/cmake/multipleRandom && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/share/cmake/multipleRandom /home/nvidia/share/cmake/multipleRandom /home/nvidia/share/cmake/multipleRandom /home/nvidia/share/cmake/multipleRandom /home/nvidia/share/cmake/multipleRandom/CMakeFiles/Demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Demo.dir/depend

