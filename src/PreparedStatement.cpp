#include "PreparedStatement.hpp"

#include <stdexcept>
#include <memory>

#include "Cursor.hpp"
#include "FileLog.h"

#include "Cursor.hpp"
#include "Database.hpp"

#include <iostream>

PreparedStatement::PreparedStatement(Database& db, const String& sql): SQLitePreparedStatement() {
    sqliteStatementHandle = sqlPrepare(db.getSQLiteHandle(), sql);
    if (LOGS_ENABLED) {
        mQuery = sql;
        startTime = getTime();
    }
}

std::unique_ptr<Cursor> PreparedStatement::query(const List<Object>& args) {
    checkFinalized();

    sqlReset(sqliteStatementHandle);

    int i = 1;
    for (int a = 0; a < args.size(); a++) {
        std::variant<std::monostate, int, double, String, long> arg = args.at(a);
        if (std::holds_alternative<std::monostate>(arg)) {
            sqlBindNull(sqliteStatementHandle, i);
        } else if (std::holds_alternative<int>(arg)) {
            sqlBindInt(sqliteStatementHandle, i, std::get<int>(arg));
        } else if (std::holds_alternative<double>(arg)) {
            sqlBindDouble(sqliteStatementHandle, i, std::get<double>(arg));
        } else if (std::holds_alternative<String>(arg)) {
            sqlBindString(sqliteStatementHandle, i, std::get<String>(arg));
        } else if (std::holds_alternative<long>(arg)) {
            sqlBindLong(sqliteStatementHandle, i, std::get<long>(arg));
        } else {
            throw std::runtime_error("Unknown type to bind");
        }
        i++;
    }
    return std::make_unique<Cursor>(this);
}

int PreparedStatement::step() {
    return sqlStep(sqliteStatementHandle);
}

PreparedStatement& PreparedStatement::stepThis() {
    sqlStep(sqliteStatementHandle);
    return *this;
}

void PreparedStatement::requery() {
    checkFinalized();
    sqlReset(sqliteStatementHandle);
}

void PreparedStatement::dispose() {
    finalizeQuery();
}

void PreparedStatement::checkFinalized() {
    if (isFinalized) {
        throw std::runtime_error("Prepared query finalized");
    }
}

void PreparedStatement::finalizeQuery() {
    if (isFinalized)
        return;
    if (LOGS_ENABLED) {
        int64_t diff = getTime() - startTime;
        if (diff > 500) {
            String queryTime = "sqlite query " + mQuery + " took " + std::to_string(diff) + "ms";
            DEBUG_D(queryTime.c_str());
        }
    }
    try {
        isFinalized = true;
        sqlFinalize(sqliteStatementHandle);
    } catch (const std::exception& e) {
        DEBUG_E(e.what());
    }
}

void PreparedStatement::bindInt(int index, int value) {
    sqlBindInt(sqliteStatementHandle, index, value);
}

void PreparedStatement::bindDouble(int index, double value) {
    sqlBindDouble(sqliteStatementHandle, index, value);
}

void PreparedStatement::bindByteArray(int index, uint8_t* value, int limit) {
    sqlBindByteArray(sqliteStatementHandle, index, value, limit);
}

void PreparedStatement::bindByteBuffer(int index, NativeByteBuffer& value) {
    sqlBindByteArray(sqliteStatementHandle, index, value.bytes(), value.limit());
}

void PreparedStatement::bindString(int index, const String& value) {
    sqlBindString(sqliteStatementHandle, index, value);
}

void PreparedStatement::bindLong(int index, long value) {
    sqlBindLong(sqliteStatementHandle, index, value);
}

void PreparedStatement::bindNull(int index) {
    sqlBindNull(sqliteStatementHandle, index);
}
