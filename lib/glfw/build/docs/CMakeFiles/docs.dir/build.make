# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build

# Utility rule file for docs.

# Include any custom commands dependencies for this target.
include docs/CMakeFiles/docs.dir/compiler_depend.make

# Include the progress variables for this target.
include docs/CMakeFiles/docs.dir/progress.make

docs/CMakeFiles/docs:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating HTML documentation"
	cd /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build/docs && /opt/homebrew/bin/doxygen

docs: docs/CMakeFiles/docs
docs: docs/CMakeFiles/docs.dir/build.make
.PHONY : docs

# Rule to build all files generated by this target.
docs/CMakeFiles/docs.dir/build: docs
.PHONY : docs/CMakeFiles/docs.dir/build

docs/CMakeFiles/docs.dir/clean:
	cd /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build/docs && $(CMAKE_COMMAND) -P CMakeFiles/docs.dir/cmake_clean.cmake
.PHONY : docs/CMakeFiles/docs.dir/clean

docs/CMakeFiles/docs.dir/depend:
	cd /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/docs /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build/docs /Users/piras314/Documents/Programming/C/Graphics/OpenGL/OpenGLLearning/lib/glfw/build/docs/CMakeFiles/docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docs/CMakeFiles/docs.dir/depend

