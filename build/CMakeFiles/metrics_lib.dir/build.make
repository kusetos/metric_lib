# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kuset/repos/dev/temp/metric_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kuset/repos/dev/temp/metric_lib/build

# Include any dependencies generated for this target.
include CMakeFiles/metrics_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/metrics_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/metrics_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/metrics_lib.dir/flags.make

CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o: CMakeFiles/metrics_lib.dir/flags.make
CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o: /home/kuset/repos/dev/temp/metric_lib/src/MetricsRegistry.cpp
CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o: CMakeFiles/metrics_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kuset/repos/dev/temp/metric_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o -MF CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o.d -o CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o -c /home/kuset/repos/dev/temp/metric_lib/src/MetricsRegistry.cpp

CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kuset/repos/dev/temp/metric_lib/src/MetricsRegistry.cpp > CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.i

CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kuset/repos/dev/temp/metric_lib/src/MetricsRegistry.cpp -o CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.s

CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o: CMakeFiles/metrics_lib.dir/flags.make
CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o: /home/kuset/repos/dev/temp/metric_lib/src/MetricsReporter.cpp
CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o: CMakeFiles/metrics_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kuset/repos/dev/temp/metric_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o -MF CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o.d -o CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o -c /home/kuset/repos/dev/temp/metric_lib/src/MetricsReporter.cpp

CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kuset/repos/dev/temp/metric_lib/src/MetricsReporter.cpp > CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.i

CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kuset/repos/dev/temp/metric_lib/src/MetricsReporter.cpp -o CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.s

CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o: CMakeFiles/metrics_lib.dir/flags.make
CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o: /home/kuset/repos/dev/temp/metric_lib/src/writers/FileWriter.cpp
CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o: CMakeFiles/metrics_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kuset/repos/dev/temp/metric_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o -MF CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o.d -o CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o -c /home/kuset/repos/dev/temp/metric_lib/src/writers/FileWriter.cpp

CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kuset/repos/dev/temp/metric_lib/src/writers/FileWriter.cpp > CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.i

CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kuset/repos/dev/temp/metric_lib/src/writers/FileWriter.cpp -o CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.s

# Object files for target metrics_lib
metrics_lib_OBJECTS = \
"CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o" \
"CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o" \
"CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o"

# External object files for target metrics_lib
metrics_lib_EXTERNAL_OBJECTS =

libmetrics_lib.a: CMakeFiles/metrics_lib.dir/src/MetricsRegistry.cpp.o
libmetrics_lib.a: CMakeFiles/metrics_lib.dir/src/MetricsReporter.cpp.o
libmetrics_lib.a: CMakeFiles/metrics_lib.dir/src/writers/FileWriter.cpp.o
libmetrics_lib.a: CMakeFiles/metrics_lib.dir/build.make
libmetrics_lib.a: CMakeFiles/metrics_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kuset/repos/dev/temp/metric_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libmetrics_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/metrics_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/metrics_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/metrics_lib.dir/build: libmetrics_lib.a
.PHONY : CMakeFiles/metrics_lib.dir/build

CMakeFiles/metrics_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metrics_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metrics_lib.dir/clean

CMakeFiles/metrics_lib.dir/depend:
	cd /home/kuset/repos/dev/temp/metric_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kuset/repos/dev/temp/metric_lib /home/kuset/repos/dev/temp/metric_lib /home/kuset/repos/dev/temp/metric_lib/build /home/kuset/repos/dev/temp/metric_lib/build /home/kuset/repos/dev/temp/metric_lib/build/CMakeFiles/metrics_lib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/metrics_lib.dir/depend

