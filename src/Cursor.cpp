#include "Cursor.hpp"

#include <unistd.h>

#include <iostream>
#include <sstream>
#include <stdexcept>

#include "core/FileLog.h"
#include "PreparedStatement.hpp"
#include "SQLite/sqlite3.h"

Cursor::Cursor(PreparedStatement* stmt): SQLiteCursor() {
    preparedStatement = stmt;
}

bool Cursor::isNull(int columnIndex) {
    checkRow();
    return columnIsNull(preparedStatement->sqliteStatementHandle, columnIndex) == 1;
}

int Cursor::intValue(int columnIndex) {
    checkRow();
    return columnIntValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

double Cursor::doubleValue(int columnIndex) {
    checkRow();
    return columnDoubleValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

long Cursor::longValue(int columnIndex) {
    checkRow();
    return columnLongValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

String Cursor::stringValue(int columnIndex) {
    checkRow();
    return columnStringValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

Byte* Cursor::byteArrayValue(int columnIndex) {
    checkRow();
    return columnByteArrayValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

long Cursor::byteBufferValue(int columnIndex) {
    checkRow();
    return columnByteBufferValue(preparedStatement->sqliteStatementHandle, columnIndex);
}

int Cursor::getTypeOf(int columnIndex) {
    checkRow();
    return columnType(preparedStatement->sqliteStatementHandle, columnIndex);
}

bool Cursor::next() {
    int res = preparedStatement->step();
    if (res == -1) {
        int repeatCount = 6;
        while (repeatCount-- != 0) {
            try {
                DEBUG_D("sqlite busy, waiting...");
                usleep(500000);
                res = preparedStatement->step();
                if (res == 0) {
                    break;
                }
            } catch (std::exception e) {
                DEBUG_E(e.what());
            }
        }
        if (res == -1) {
            throw std::runtime_error("sqlite busy");
        }
    }
    inRow = res == 0;
    return inRow;
}

long Cursor::getStatementHandle() {
    return preparedStatement->sqliteStatementHandle;
}

int Cursor::getColumnCount() {
    return columnCount(preparedStatement->sqliteStatementHandle);
}

void Cursor::dispose() {
    preparedStatement->dispose();
}

void Cursor::checkRow() {
    if (!inRow) {
        throw std::runtime_error("You must call next before");
    }
}
