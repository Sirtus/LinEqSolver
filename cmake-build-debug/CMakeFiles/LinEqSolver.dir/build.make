# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tomek/CLionProjects/LinEqSolver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tomek/CLionProjects/LinEqSolver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LinEqSolver.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/LinEqSolver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LinEqSolver.dir/flags.make

CMakeFiles/LinEqSolver.dir/main.cpp.o: CMakeFiles/LinEqSolver.dir/flags.make
CMakeFiles/LinEqSolver.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LinEqSolver.dir/main.cpp.o"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinEqSolver.dir/main.cpp.o -c /home/tomek/CLionProjects/LinEqSolver/main.cpp

CMakeFiles/LinEqSolver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinEqSolver.dir/main.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomek/CLionProjects/LinEqSolver/main.cpp > CMakeFiles/LinEqSolver.dir/main.cpp.i

CMakeFiles/LinEqSolver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinEqSolver.dir/main.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomek/CLionProjects/LinEqSolver/main.cpp -o CMakeFiles/LinEqSolver.dir/main.cpp.s

CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o: CMakeFiles/LinEqSolver.dir/flags.make
CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o: ../src/Variable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o -c /home/tomek/CLionProjects/LinEqSolver/src/Variable.cpp

CMakeFiles/LinEqSolver.dir/src/Variable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinEqSolver.dir/src/Variable.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomek/CLionProjects/LinEqSolver/src/Variable.cpp > CMakeFiles/LinEqSolver.dir/src/Variable.cpp.i

CMakeFiles/LinEqSolver.dir/src/Variable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinEqSolver.dir/src/Variable.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomek/CLionProjects/LinEqSolver/src/Variable.cpp -o CMakeFiles/LinEqSolver.dir/src/Variable.cpp.s

CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o: CMakeFiles/LinEqSolver.dir/flags.make
CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o: ../src/Equation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o -c /home/tomek/CLionProjects/LinEqSolver/src/Equation.cpp

CMakeFiles/LinEqSolver.dir/src/Equation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinEqSolver.dir/src/Equation.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomek/CLionProjects/LinEqSolver/src/Equation.cpp > CMakeFiles/LinEqSolver.dir/src/Equation.cpp.i

CMakeFiles/LinEqSolver.dir/src/Equation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinEqSolver.dir/src/Equation.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomek/CLionProjects/LinEqSolver/src/Equation.cpp -o CMakeFiles/LinEqSolver.dir/src/Equation.cpp.s

CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o: CMakeFiles/LinEqSolver.dir/flags.make
CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o: ../src/Equations_System.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o -c /home/tomek/CLionProjects/LinEqSolver/src/Equations_System.cpp

CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomek/CLionProjects/LinEqSolver/src/Equations_System.cpp > CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.i

CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomek/CLionProjects/LinEqSolver/src/Equations_System.cpp -o CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.s

CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o: CMakeFiles/LinEqSolver.dir/flags.make
CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o: ../src/Img_To_Txt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o -c /home/tomek/CLionProjects/LinEqSolver/src/Img_To_Txt.cpp

CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.i"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomek/CLionProjects/LinEqSolver/src/Img_To_Txt.cpp > CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.i

CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.s"
	/usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomek/CLionProjects/LinEqSolver/src/Img_To_Txt.cpp -o CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.s

# Object files for target LinEqSolver
LinEqSolver_OBJECTS = \
"CMakeFiles/LinEqSolver.dir/main.cpp.o" \
"CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o" \
"CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o" \
"CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o" \
"CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o"

# External object files for target LinEqSolver
LinEqSolver_EXTERNAL_OBJECTS =

../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/main.cpp.o
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/src/Variable.cpp.o
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/src/Equation.cpp.o
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/src/Equations_System.cpp.o
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/src/Img_To_Txt.cpp.o
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/build.make
../bin/LinEqSolver: /usr/local/lib/libopencv_gapi.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_highgui.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_ml.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_objdetect.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_photo.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_stitching.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_video.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_videoio.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_dnn.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_imgcodecs.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_calib3d.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_features2d.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_flann.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_imgproc.so.4.5.2
../bin/LinEqSolver: /usr/local/lib/libopencv_core.so.4.5.2
../bin/LinEqSolver: CMakeFiles/LinEqSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/LinEqSolver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LinEqSolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LinEqSolver.dir/build: ../bin/LinEqSolver
.PHONY : CMakeFiles/LinEqSolver.dir/build

CMakeFiles/LinEqSolver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LinEqSolver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LinEqSolver.dir/clean

CMakeFiles/LinEqSolver.dir/depend:
	cd /home/tomek/CLionProjects/LinEqSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tomek/CLionProjects/LinEqSolver /home/tomek/CLionProjects/LinEqSolver /home/tomek/CLionProjects/LinEqSolver/cmake-build-debug /home/tomek/CLionProjects/LinEqSolver/cmake-build-debug /home/tomek/CLionProjects/LinEqSolver/cmake-build-debug/CMakeFiles/LinEqSolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LinEqSolver.dir/depend
