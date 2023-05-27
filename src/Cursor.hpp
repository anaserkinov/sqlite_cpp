#ifndef CURSOR_HPP
#define CURSOR_HPP

#include <memory>

#include "NativeByteBuffer.h"
#include "SQLiteCursor.hpp"
#include "using/types.hpp"

class PreparedStatement;

class Cursor : public SQLiteCursor {
    bool inRow = false;
    PreparedStatement* preparedStatement = nullptr;

public:
    const int FIELD_TYPE_INT = 1;
    const int FIELD_TYPE_FLOAT = 2;
    const int FIELD_TYPE_STRING = 3;
    const int FIELD_TYPE_BYTEARRAY = 4;
    const int FIELD_TYPE_NULL = 5;

    Cursor(PreparedStatement* statement);
    PreparedStatement& getPreparedStatement();
    bool isNull(int columnIndex);
    int intValue(int columnIndex);
    double doubleValue(int columnIndex);
    long longValue(int columnIndex);
    String stringValue(int columnIndex);
    Byte* byteArrayValue(int columnIndex);
    long byteBufferValue(int columnIndex);
    int getTypeOf(int columnIndex);
    bool next();
    long getStatementHandle();
    int getColumnCount();
    void dispose();
    void checkRow();
};

class CursorWrapper {
public:
    Cursor* cursor;
    CursorWrapper(Cursor* cursor)
        : cursor(cursor) {
    }
    ~CursorWrapper() {
        if (cursor) cursor->dispose();
    }
};

#endif