# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/zhou/myprojects/zserver/server-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhou/myprojects/zserver/server-cpp

# Include any dependencies generated for this target.
include CMakeFiles/zservercpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zservercpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zservercpp.dir/flags.make

CMakeFiles/zservercpp.dir/main.cpp.o: CMakeFiles/zservercpp.dir/flags.make
CMakeFiles/zservercpp.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhou/myprojects/zserver/server-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/zservercpp.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zservercpp.dir/main.cpp.o -c /home/zhou/myprojects/zserver/server-cpp/main.cpp

CMakeFiles/zservercpp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zservercpp.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhou/myprojects/zserver/server-cpp/main.cpp > CMakeFiles/zservercpp.dir/main.cpp.i

CMakeFiles/zservercpp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zservercpp.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhou/myprojects/zserver/server-cpp/main.cpp -o CMakeFiles/zservercpp.dir/main.cpp.s

CMakeFiles/zservercpp.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/zservercpp.dir/main.cpp.o.requires

CMakeFiles/zservercpp.dir/main.cpp.o.provides: CMakeFiles/zservercpp.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/zservercpp.dir/build.make CMakeFiles/zservercpp.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/zservercpp.dir/main.cpp.o.provides

CMakeFiles/zservercpp.dir/main.cpp.o.provides.build: CMakeFiles/zservercpp.dir/main.cpp.o


CMakeFiles/zservercpp.dir/tcpserver.cpp.o: CMakeFiles/zservercpp.dir/flags.make
CMakeFiles/zservercpp.dir/tcpserver.cpp.o: tcpserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhou/myprojects/zserver/server-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/zservercpp.dir/tcpserver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zservercpp.dir/tcpserver.cpp.o -c /home/zhou/myprojects/zserver/server-cpp/tcpserver.cpp

CMakeFiles/zservercpp.dir/tcpserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zservercpp.dir/tcpserver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhou/myprojects/zserver/server-cpp/tcpserver.cpp > CMakeFiles/zservercpp.dir/tcpserver.cpp.i

CMakeFiles/zservercpp.dir/tcpserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zservercpp.dir/tcpserver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhou/myprojects/zserver/server-cpp/tcpserver.cpp -o CMakeFiles/zservercpp.dir/tcpserver.cpp.s

CMakeFiles/zservercpp.dir/tcpserver.cpp.o.requires:

.PHONY : CMakeFiles/zservercpp.dir/tcpserver.cpp.o.requires

CMakeFiles/zservercpp.dir/tcpserver.cpp.o.provides: CMakeFiles/zservercpp.dir/tcpserver.cpp.o.requires
	$(MAKE) -f CMakeFiles/zservercpp.dir/build.make CMakeFiles/zservercpp.dir/tcpserver.cpp.o.provides.build
.PHONY : CMakeFiles/zservercpp.dir/tcpserver.cpp.o.provides

CMakeFiles/zservercpp.dir/tcpserver.cpp.o.provides.build: CMakeFiles/zservercpp.dir/tcpserver.cpp.o


CMakeFiles/zservercpp.dir/database.cpp.o: CMakeFiles/zservercpp.dir/flags.make
CMakeFiles/zservercpp.dir/database.cpp.o: database.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhou/myprojects/zserver/server-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/zservercpp.dir/database.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zservercpp.dir/database.cpp.o -c /home/zhou/myprojects/zserver/server-cpp/database.cpp

CMakeFiles/zservercpp.dir/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zservercpp.dir/database.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhou/myprojects/zserver/server-cpp/database.cpp > CMakeFiles/zservercpp.dir/database.cpp.i

CMakeFiles/zservercpp.dir/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zservercpp.dir/database.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhou/myprojects/zserver/server-cpp/database.cpp -o CMakeFiles/zservercpp.dir/database.cpp.s

CMakeFiles/zservercpp.dir/database.cpp.o.requires:

.PHONY : CMakeFiles/zservercpp.dir/database.cpp.o.requires

CMakeFiles/zservercpp.dir/database.cpp.o.provides: CMakeFiles/zservercpp.dir/database.cpp.o.requires
	$(MAKE) -f CMakeFiles/zservercpp.dir/build.make CMakeFiles/zservercpp.dir/database.cpp.o.provides.build
.PHONY : CMakeFiles/zservercpp.dir/database.cpp.o.provides

CMakeFiles/zservercpp.dir/database.cpp.o.provides.build: CMakeFiles/zservercpp.dir/database.cpp.o


# Object files for target zservercpp
zservercpp_OBJECTS = \
"CMakeFiles/zservercpp.dir/main.cpp.o" \
"CMakeFiles/zservercpp.dir/tcpserver.cpp.o" \
"CMakeFiles/zservercpp.dir/database.cpp.o"

# External object files for target zservercpp
zservercpp_EXTERNAL_OBJECTS =

zservercpp: CMakeFiles/zservercpp.dir/main.cpp.o
zservercpp: CMakeFiles/zservercpp.dir/tcpserver.cpp.o
zservercpp: CMakeFiles/zservercpp.dir/database.cpp.o
zservercpp: CMakeFiles/zservercpp.dir/build.make
zservercpp: CMakeFiles/zservercpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhou/myprojects/zserver/server-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable zservercpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zservercpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zservercpp.dir/build: zservercpp

.PHONY : CMakeFiles/zservercpp.dir/build

CMakeFiles/zservercpp.dir/requires: CMakeFiles/zservercpp.dir/main.cpp.o.requires
CMakeFiles/zservercpp.dir/requires: CMakeFiles/zservercpp.dir/tcpserver.cpp.o.requires
CMakeFiles/zservercpp.dir/requires: CMakeFiles/zservercpp.dir/database.cpp.o.requires

.PHONY : CMakeFiles/zservercpp.dir/requires

CMakeFiles/zservercpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zservercpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zservercpp.dir/clean

CMakeFiles/zservercpp.dir/depend:
	cd /home/zhou/myprojects/zserver/server-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhou/myprojects/zserver/server-cpp /home/zhou/myprojects/zserver/server-cpp /home/zhou/myprojects/zserver/server-cpp /home/zhou/myprojects/zserver/server-cpp /home/zhou/myprojects/zserver/server-cpp/CMakeFiles/zservercpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zservercpp.dir/depend

