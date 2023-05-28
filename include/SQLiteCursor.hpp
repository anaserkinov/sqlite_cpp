#ifndef SQLITECURSOR_HPP
#define SQLITECURSOR_HPP

#include <string>

class SQLiteCursor {
protected:
    int columnCount(const long& statementHandle);

    int columnType(const long& statementHandle, int columnIndex);

    int columnIsNull(const long& statementHandle, int columnIndex);

    int columnIntValue(const long& statementHandle, int columnIndex);

    long columnLongValue(const long& statementHandle, int columnIndex);

    double columnDoubleValue(const long& statementHandle, int columnIndex);

    std::string columnStringValue(const long& statementHandle, int columnIndex);

    std::byte* columnByteArrayValue(const long& statementHandle, int columnIndex);

    long columnByteBufferValue(const long& statementHandle, int columnIndex);
};

#endif