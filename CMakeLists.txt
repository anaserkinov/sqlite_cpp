cmake_minimum_required(VERSION 3.10)

project(SQLite_CPP)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

#sqlite

add_library(sqlite_cpp STATIC
${SOURCE_DIR}/SQLite/sqlite3.c
${SOURCE_DIR}/core/TgObject.cpp
${SOURCE_DIR}/core/BuffersStorage.cpp
${SOURCE_DIR}/core/ByteArray.cpp
${SOURCE_DIR}/core/FileLog.cpp
${SOURCE_DIR}/core/NativeByteBuffer.cpp

${SOURCE_DIR}/SQLitePreparedStatement.cpp
${SOURCE_DIR}/SQLiteCursor.cpp
${SOURCE_DIR}/SQLiteDatabase.cpp
${SOURCE_DIR}/PreparedStatement.cpp
${SOURCE_DIR}/Cursor.cpp
${SOURCE_DIR}/Database.cpp

${SOURCE_DIR}/core/Base.cpp
)

include_directories(
    "include"
)

target_compile_options(sqlite_cpp PUBLIC -fno-strict-aliasing -Os)

