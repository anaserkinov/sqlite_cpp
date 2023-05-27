#ifndef SQLITEDATABASE_HPP
#define SQLITEDATABASE_HPP

#include <string>

class SQLiteDatabase {
protected:
    long opendb(const std::string& fileName, const std::string& tempDir);

    void mBeginTransaction(const long& sqliteHandle);

    void mCommitTransaction(const long& sqliteHandle);

    void closedb(const long& sqliteHandle);
};

#endif