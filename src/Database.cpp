#include "Database.hpp"

#include <cstring>
#include <sstream>
#include <stdexcept>

#include "core/FileLog.h"
#include "SQLite/sqlite3.h"

#include "Cursor.hpp"
#include "PreparedStatement.hpp"

long& Database::getSQLiteHandle() {
    return sqliteHandle;
}

Database::Database(String fileName): SQLiteDatabase() {
    sqliteHandle = opendb(fileName, "../files/");
    isOpen = true;
}

bool Database::tableExists(String tableName) {
    checkOpened();
    const String s =
            "SELECT rowid FROM sqlite_master WHERE type='table' AND name=?;";
    List<Object> args = {Object(tableName)};
    return executeInt(s, args).has_value();
}

PreparedStatementPtr Database::executeFast(const String& sql) {
    return std::make_shared<PreparedStatement>(*this, sql);
}

Int Database::executeInt(const String& sql, List<Object>& args) {
    checkOpened();
    CursorPtr cursor = PreparedStatement(*this, sql).query(args);
    CursorWrapper cursorWrapper(cursor);
    try {
        if (!cursor->next()) {
            return Int();
        }
        return Int(cursor->intValue(0));
    } catch (const std::exception& e) {
        return Int();
    }
}

void Database::explainQuery(const String& sql, List<Object>& args) {
    checkOpened();
    const String query = "EXPLAIN QUERY PLAN " + sql;
    PreparedStatement preparedStatement(*this, query);
    CursorPtr cursor = preparedStatement.query(args);
    while (cursor->next()) {
        int count = cursor->getColumnCount();
        std::stringstream builder;
        for (int a = 0; a < count; a++) {
            builder << cursor->stringValue(a) << ", ";
        }
        String exp = "EXPLAIN QUERY PLAN " + *builder.str().c_str();
        DEBUG_D(exp.c_str());
    }
    cursor->dispose();
}


CursorPtr Database::queryFinalized(String sql, List<Object>& args) {
    checkOpened();
    PreparedStatementPtr ps = std::make_shared<PreparedStatement>(*this, sql);
    return ps->query(args);
}

void Database::close() {
    if (isOpen) {
        try {
            commitTransaction();
            closedb(sqliteHandle);
        } catch (const std::exception& e) {
          if (LOGS_ENABLED){
            DEBUG_E(e.what());
          }
          
        }
        isOpen = false;
    }
}

void Database::checkOpened(){
   if (!isOpen) {
        throw std::runtime_error("Database closed");
    }
}

void Database::finalize() {
    close();
}

void Database::beginTransaction() {
    if (inTransaction) {
        throw std::runtime_error("database already in transaction");
    }
    inTransaction = true;
    mBeginTransaction(sqliteHandle);
}

void Database::commitTransaction() {
    if (!inTransaction) {
        return;
    }
    inTransaction = false;
    mCommitTransaction(sqliteHandle);
}