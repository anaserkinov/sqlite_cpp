#include "SQLiteDatabase.hpp"

#include <cstring>
#include <stdexcept>

#include "SQLite/sqlite3.h"

long SQLiteDatabase::opendb(const std::string& fileName, const std::string& tempDir) {
    char const *fileNameStr = &fileName[0];
    char const *tempDirStr = &tempDir[0];

    if (sqlite3_temp_directory != 0 &&
        strcmp(sqlite3_temp_directory, tempDirStr)) {
        sqlite3_free(sqlite3_temp_directory);
    }
    if (sqlite3_temp_directory == 0) {
        sqlite3_temp_directory = sqlite3_mprintf("%s", tempDirStr);
    }

    sqlite3 *handle = 0;
    int err = sqlite3_open(fileNameStr, &handle);
    if (SQLITE_OK != err) {
        throw std::runtime_error(sqlite3_errmsg(handle));
    }
    return (long)handle;
}

void SQLiteDatabase::closedb(const long& sqliteHandle) {
    sqlite3 *handle = (sqlite3 *)sqliteHandle;
    int err = sqlite3_close(handle);
    if (SQLITE_OK != err) {
        throw std::runtime_error(sqlite3_errmsg(handle));
    }
}

void SQLiteDatabase::mBeginTransaction(const long& sqliteHandle) {
    sqlite3 *handle = (sqlite3 *)sqliteHandle;
    sqlite3_exec(handle, "BEGIN", 0, 0, 0);
}

void SQLiteDatabase::mCommitTransaction(const long& sqliteHandle) {
    sqlite3 *handle = (sqlite3 *)sqliteHandle;
    sqlite3_exec(handle, "COMMIT", 0, 0, 0);
}