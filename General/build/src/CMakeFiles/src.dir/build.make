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
CMAKE_SOURCE_DIR = /home/oohnohnoh1/Desktop/GIT/Research/General

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oohnohnoh1/Desktop/GIT/Research/General/build

# Include any dependencies generated for this target.
include src/CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/src.dir/flags.make

src/CMakeFiles/src.dir/openmp1.cxx.o: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/openmp1.cxx.o: ../src/openmp1.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/src.dir/openmp1.cxx.o"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/openmp1.cxx.o -c /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp1.cxx

src/CMakeFiles/src.dir/openmp1.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/openmp1.cxx.i"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp1.cxx > CMakeFiles/src.dir/openmp1.cxx.i

src/CMakeFiles/src.dir/openmp1.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/openmp1.cxx.s"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp1.cxx -o CMakeFiles/src.dir/openmp1.cxx.s

src/CMakeFiles/src.dir/openmp1.cxx.o.requires:

.PHONY : src/CMakeFiles/src.dir/openmp1.cxx.o.requires

src/CMakeFiles/src.dir/openmp1.cxx.o.provides: src/CMakeFiles/src.dir/openmp1.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/openmp1.cxx.o.provides.build
.PHONY : src/CMakeFiles/src.dir/openmp1.cxx.o.provides

src/CMakeFiles/src.dir/openmp1.cxx.o.provides.build: src/CMakeFiles/src.dir/openmp1.cxx.o


src/CMakeFiles/src.dir/openmp2.cxx.o: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/openmp2.cxx.o: ../src/openmp2.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/src.dir/openmp2.cxx.o"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/openmp2.cxx.o -c /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp2.cxx

src/CMakeFiles/src.dir/openmp2.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/openmp2.cxx.i"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp2.cxx > CMakeFiles/src.dir/openmp2.cxx.i

src/CMakeFiles/src.dir/openmp2.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/openmp2.cxx.s"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp2.cxx -o CMakeFiles/src.dir/openmp2.cxx.s

src/CMakeFiles/src.dir/openmp2.cxx.o.requires:

.PHONY : src/CMakeFiles/src.dir/openmp2.cxx.o.requires

src/CMakeFiles/src.dir/openmp2.cxx.o.provides: src/CMakeFiles/src.dir/openmp2.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/openmp2.cxx.o.provides.build
.PHONY : src/CMakeFiles/src.dir/openmp2.cxx.o.provides

src/CMakeFiles/src.dir/openmp2.cxx.o.provides.build: src/CMakeFiles/src.dir/openmp2.cxx.o


src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o: ../src/openmp_dynamicbindingandinheritance.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o -c /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp_dynamicbindingandinheritance.cxx

src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.i"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp_dynamicbindingandinheritance.cxx > CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.i

src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.s"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oohnohnoh1/Desktop/GIT/Research/General/src/openmp_dynamicbindingandinheritance.cxx -o CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.s

src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.requires:

.PHONY : src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.requires

src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.provides: src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.provides.build
.PHONY : src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.provides

src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.provides.build: src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o


src/CMakeFiles/src.dir/grade.cxx.o: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/grade.cxx.o: ../src/grade.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/src.dir/grade.cxx.o"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/grade.cxx.o -c /home/oohnohnoh1/Desktop/GIT/Research/General/src/grade.cxx

src/CMakeFiles/src.dir/grade.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/grade.cxx.i"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oohnohnoh1/Desktop/GIT/Research/General/src/grade.cxx > CMakeFiles/src.dir/grade.cxx.i

src/CMakeFiles/src.dir/grade.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/grade.cxx.s"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oohnohnoh1/Desktop/GIT/Research/General/src/grade.cxx -o CMakeFiles/src.dir/grade.cxx.s

src/CMakeFiles/src.dir/grade.cxx.o.requires:

.PHONY : src/CMakeFiles/src.dir/grade.cxx.o.requires

src/CMakeFiles/src.dir/grade.cxx.o.provides: src/CMakeFiles/src.dir/grade.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/grade.cxx.o.provides.build
.PHONY : src/CMakeFiles/src.dir/grade.cxx.o.provides

src/CMakeFiles/src.dir/grade.cxx.o.provides.build: src/CMakeFiles/src.dir/grade.cxx.o


src/CMakeFiles/src.dir/Student_info.cxx.o: src/CMakeFiles/src.dir/flags.make
src/CMakeFiles/src.dir/Student_info.cxx.o: ../src/Student_info.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/src.dir/Student_info.cxx.o"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/Student_info.cxx.o -c /home/oohnohnoh1/Desktop/GIT/Research/General/src/Student_info.cxx

src/CMakeFiles/src.dir/Student_info.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/Student_info.cxx.i"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oohnohnoh1/Desktop/GIT/Research/General/src/Student_info.cxx > CMakeFiles/src.dir/Student_info.cxx.i

src/CMakeFiles/src.dir/Student_info.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/Student_info.cxx.s"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oohnohnoh1/Desktop/GIT/Research/General/src/Student_info.cxx -o CMakeFiles/src.dir/Student_info.cxx.s

src/CMakeFiles/src.dir/Student_info.cxx.o.requires:

.PHONY : src/CMakeFiles/src.dir/Student_info.cxx.o.requires

src/CMakeFiles/src.dir/Student_info.cxx.o.provides: src/CMakeFiles/src.dir/Student_info.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/Student_info.cxx.o.provides.build
.PHONY : src/CMakeFiles/src.dir/Student_info.cxx.o.provides

src/CMakeFiles/src.dir/Student_info.cxx.o.provides.build: src/CMakeFiles/src.dir/Student_info.cxx.o


# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/openmp1.cxx.o" \
"CMakeFiles/src.dir/openmp2.cxx.o" \
"CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o" \
"CMakeFiles/src.dir/grade.cxx.o" \
"CMakeFiles/src.dir/Student_info.cxx.o"

# External object files for target src
src_EXTERNAL_OBJECTS =

src/libsrc.a: src/CMakeFiles/src.dir/openmp1.cxx.o
src/libsrc.a: src/CMakeFiles/src.dir/openmp2.cxx.o
src/libsrc.a: src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o
src/libsrc.a: src/CMakeFiles/src.dir/grade.cxx.o
src/libsrc.a: src/CMakeFiles/src.dir/Student_info.cxx.o
src/libsrc.a: src/CMakeFiles/src.dir/build.make
src/libsrc.a: src/CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oohnohnoh1/Desktop/GIT/Research/General/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libsrc.a"
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && $(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean_target.cmake
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/src.dir/build: src/libsrc.a

.PHONY : src/CMakeFiles/src.dir/build

src/CMakeFiles/src.dir/requires: src/CMakeFiles/src.dir/openmp1.cxx.o.requires
src/CMakeFiles/src.dir/requires: src/CMakeFiles/src.dir/openmp2.cxx.o.requires
src/CMakeFiles/src.dir/requires: src/CMakeFiles/src.dir/openmp_dynamicbindingandinheritance.cxx.o.requires
src/CMakeFiles/src.dir/requires: src/CMakeFiles/src.dir/grade.cxx.o.requires
src/CMakeFiles/src.dir/requires: src/CMakeFiles/src.dir/Student_info.cxx.o.requires

.PHONY : src/CMakeFiles/src.dir/requires

src/CMakeFiles/src.dir/clean:
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build/src && $(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/src.dir/clean

src/CMakeFiles/src.dir/depend:
	cd /home/oohnohnoh1/Desktop/GIT/Research/General/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oohnohnoh1/Desktop/GIT/Research/General /home/oohnohnoh1/Desktop/GIT/Research/General/src /home/oohnohnoh1/Desktop/GIT/Research/General/build /home/oohnohnoh1/Desktop/GIT/Research/General/build/src /home/oohnohnoh1/Desktop/GIT/Research/General/build/src/CMakeFiles/src.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/src.dir/depend

