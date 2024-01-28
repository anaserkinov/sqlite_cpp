#ifndef SQLITEPREPAREDSTATEMENT_HPP
#define SQLITEPREPAREDSTATEMENT_HPP

#include <string>

#include "SQLiteDatabase.hpp"

class SQLitePreparedStatement {
public:
    int sqlStep(const long& statementHandle);
    int sqlStep(const long& sqliteHandle, const long& statementHandle);

    long sqlPrepare(const long& statementHandle, const std::string& sql);

    void sqlReset(const long& statementHandle);

    void sqlFinalize(const long& statementHandle);

    void sqlBindByteArray(const long& statementHandle, int index, void* value, int length);

    void sqlBindString(const long& statementHandle, int index, const std::string& value);

    void sqlBindInt32(const long& statementHandle, int index, int32_t value);

    void sqlBindInt64(const long& statementHandle, int index, int64_t value);

    void sqlBindDouble(const long& statementHandle, int index, double value);

    void sqlBindNull(const long& statementHandle, int index);
};

#endif