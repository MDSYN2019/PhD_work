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
CMAKE_SOURCE_DIR = /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build

# Include any dependencies generated for this target.
include CMakeFiles/MPI_EX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MPI_EX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MPI_EX.dir/flags.make

CMakeFiles/MPI_EX.dir/main.o: CMakeFiles/MPI_EX.dir/flags.make
CMakeFiles/MPI_EX.dir/main.o: ../main.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MPI_EX.dir/main.o"
	/home/noh/anaconda3/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MPI_EX.dir/main.o -c /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/main.cxx

CMakeFiles/MPI_EX.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MPI_EX.dir/main.i"
	/home/noh/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/main.cxx > CMakeFiles/MPI_EX.dir/main.i

CMakeFiles/MPI_EX.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MPI_EX.dir/main.s"
	/home/noh/anaconda3/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/main.cxx -o CMakeFiles/MPI_EX.dir/main.s

CMakeFiles/MPI_EX.dir/main.o.requires:

.PHONY : CMakeFiles/MPI_EX.dir/main.o.requires

CMakeFiles/MPI_EX.dir/main.o.provides: CMakeFiles/MPI_EX.dir/main.o.requires
	$(MAKE) -f CMakeFiles/MPI_EX.dir/build.make CMakeFiles/MPI_EX.dir/main.o.provides.build
.PHONY : CMakeFiles/MPI_EX.dir/main.o.provides

CMakeFiles/MPI_EX.dir/main.o.provides.build: CMakeFiles/MPI_EX.dir/main.o


# Object files for target MPI_EX
MPI_EX_OBJECTS = \
"CMakeFiles/MPI_EX.dir/main.o"

# External object files for target MPI_EX
MPI_EX_EXTERNAL_OBJECTS =

MPI_EX: CMakeFiles/MPI_EX.dir/main.o
MPI_EX: CMakeFiles/MPI_EX.dir/build.make
MPI_EX: src/libsrc.a
MPI_EX: /home/noh/anaconda3/lib/libmpicxx.so
MPI_EX: /home/noh/anaconda3/lib/libmpi.so
MPI_EX: libgsllib.a
MPI_EX: CMakeFiles/MPI_EX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MPI_EX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MPI_EX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MPI_EX.dir/build: MPI_EX

.PHONY : CMakeFiles/MPI_EX.dir/build

CMakeFiles/MPI_EX.dir/requires: CMakeFiles/MPI_EX.dir/main.o.requires

.PHONY : CMakeFiles/MPI_EX.dir/requires

CMakeFiles/MPI_EX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MPI_EX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MPI_EX.dir/clean

CMakeFiles/MPI_EX.dir/depend:
	cd /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build /home/noh/Desktop/WIP/GIT/PhD_work/MPI_work/build/CMakeFiles/MPI_EX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MPI_EX.dir/depend

