# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/anaskhan/proj/buildroid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anaskhan/proj/buildroid

# Include any dependencies generated for this target.
include sqlite_cpp/CMakeFiles/sqlite_cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include sqlite_cpp/CMakeFiles/sqlite_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o: sqlite_cpp/src/SQLite/sqlite3.c
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o -MF CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o.d -o CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLite/sqlite3.c

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLite/sqlite3.c > CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLite/sqlite3.c -o CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o: sqlite_cpp/src/core/TgObject.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/TgObject.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/TgObject.cpp > CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/TgObject.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o: sqlite_cpp/src/core/BuffersStorage.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/BuffersStorage.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/BuffersStorage.cpp > CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/BuffersStorage.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o: sqlite_cpp/src/core/ByteArray.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/ByteArray.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/ByteArray.cpp > CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/ByteArray.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o: sqlite_cpp/src/core/FileLog.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/FileLog.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/FileLog.cpp > CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/FileLog.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o: sqlite_cpp/src/core/NativeByteBuffer.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/NativeByteBuffer.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/NativeByteBuffer.cpp > CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/NativeByteBuffer.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o: sqlite_cpp/src/SQLitePreparedStatement.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLitePreparedStatement.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLitePreparedStatement.cpp > CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLitePreparedStatement.cpp -o CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o: sqlite_cpp/src/SQLiteCursor.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteCursor.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteCursor.cpp > CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteCursor.cpp -o CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o: sqlite_cpp/src/SQLiteDatabase.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteDatabase.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteDatabase.cpp > CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/SQLiteDatabase.cpp -o CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o: sqlite_cpp/src/PreparedStatement.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/PreparedStatement.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/PreparedStatement.cpp > CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/PreparedStatement.cpp -o CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o: sqlite_cpp/src/Cursor.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/Cursor.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/Cursor.cpp > CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/Cursor.cpp -o CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o: sqlite_cpp/src/Database.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/Database.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/Database.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/Database.cpp > CMakeFiles/sqlite_cpp.dir/src/Database.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/Database.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/Database.cpp -o CMakeFiles/sqlite_cpp.dir/src/Database.cpp.s

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/flags.make
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o: sqlite_cpp/src/core/Base.cpp
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o -MF CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o.d -o CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o -c /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/Base.cpp

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.i"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/Base.cpp > CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.i

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.s"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/buildroid/sqlite_cpp/src/core/Base.cpp -o CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.s

# Object files for target sqlite_cpp
sqlite_cpp_OBJECTS = \
"CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o" \
"CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o"

# External object files for target sqlite_cpp
sqlite_cpp_EXTERNAL_OBJECTS =

sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLite/sqlite3.c.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/TgObject.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/BuffersStorage.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/ByteArray.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/FileLog.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/NativeByteBuffer.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLitePreparedStatement.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteCursor.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/SQLiteDatabase.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/PreparedStatement.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Cursor.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/Database.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/src/core/Base.cpp.o
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/build.make
sqlite_cpp/libsqlite_cpp.a: sqlite_cpp/CMakeFiles/sqlite_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anaskhan/proj/buildroid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX static library libsqlite_cpp.a"
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && $(CMAKE_COMMAND) -P CMakeFiles/sqlite_cpp.dir/cmake_clean_target.cmake
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sqlite_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sqlite_cpp/CMakeFiles/sqlite_cpp.dir/build: sqlite_cpp/libsqlite_cpp.a
.PHONY : sqlite_cpp/CMakeFiles/sqlite_cpp.dir/build

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/clean:
	cd /home/anaskhan/proj/buildroid/sqlite_cpp && $(CMAKE_COMMAND) -P CMakeFiles/sqlite_cpp.dir/cmake_clean.cmake
.PHONY : sqlite_cpp/CMakeFiles/sqlite_cpp.dir/clean

sqlite_cpp/CMakeFiles/sqlite_cpp.dir/depend:
	cd /home/anaskhan/proj/buildroid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anaskhan/proj/buildroid /home/anaskhan/proj/buildroid/sqlite_cpp /home/anaskhan/proj/buildroid /home/anaskhan/proj/buildroid/sqlite_cpp /home/anaskhan/proj/buildroid/sqlite_cpp/CMakeFiles/sqlite_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sqlite_cpp/CMakeFiles/sqlite_cpp.dir/depend

