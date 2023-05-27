#include "SQLiteCursor.hpp"

#include <cstring>
#include <string>

#include "SQLite/sqlite3.h"

#include "BuffersStorage.h"
#include "NativeByteBuffer.h"

int SQLiteCursor::columnCount(const long& statementHandle) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    return sqlite3_column_count(handle);
}

int SQLiteCursor::columnType(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    return sqlite3_column_type(handle, columnIndex);
}

int SQLiteCursor::columnIsNull(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    int valType = sqlite3_column_type(handle, columnIndex);
    return SQLITE_NULL == valType ? 1 : 0;
}

int SQLiteCursor::columnIntValue(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    int valType = sqlite3_column_type(handle, columnIndex);
    if (SQLITE_NULL == valType) {
        return 0;
    }
    return sqlite3_column_int(handle, columnIndex);
}

long SQLiteCursor::columnLongValue(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    int valType = sqlite3_column_type(handle, columnIndex);
    if (SQLITE_NULL == valType) {
        return 0;
    }
    return sqlite3_column_int64(handle, columnIndex);
}

double SQLiteCursor::columnDoubleValue(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    int valType = sqlite3_column_type(handle, columnIndex);
    if (SQLITE_NULL == valType) {
        return 0;
    }
    return sqlite3_column_double(handle, columnIndex);
}

std::string SQLiteCursor::columnStringValue(const long& statementHandle,
                                            int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;
    const char *str = (const char *)sqlite3_column_text(handle, columnIndex);
    if (str != 0) {
        return std::string(str);
    }
    return 0;
}

std::byte *SQLiteCursor::columnByteArrayValue(const long& statementHandle,
                                              int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)(intptr_t)statementHandle;
    const std::byte *buf = (const std::byte *)sqlite3_column_blob(handle, columnIndex);
    int length = sqlite3_column_bytes(handle, columnIndex);
    if (buf != nullptr && length > 0) {
        std::byte *result = new std::byte[length];
        std::memcpy(result, buf, length);
        return result;
    }
    return nullptr;
}

long SQLiteCursor::columnByteBufferValue(const long& statementHandle, int columnIndex) {
    sqlite3_stmt *handle = (sqlite3_stmt *)(intptr_t)statementHandle;
    uint32_t length = (uint32_t)sqlite3_column_bytes(handle, columnIndex);

    if (length < 0)
        return 0;

    NativeByteBuffer *buffer = BuffersStorage::getInstance().getFreeBuffer(length);
    if (buffer == nullptr) {
        return 0;
    }
    const char *buf = (const char *)sqlite3_column_blob(handle, columnIndex);
    if (buf == nullptr) {
        return 0;
    }
    memcpy(buffer->bytes(), buf, length);
    return (long)buffer;
}
