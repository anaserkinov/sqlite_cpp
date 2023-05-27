#include "SQLitePreparedStatement.hpp"

#include <stdexcept>

#include "SQLite/sqlite3.h"

int SQLitePreparedStatement::sqlStep(const long& statementHandle) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_step(handle);
    if (errcode == SQLITE_ROW) {
        return 0;
    } else if (errcode == SQLITE_DONE) {
        return 1;
    } else if (errcode == SQLITE_BUSY) {
        return -1;
    }

    throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));

    return 0;
};

long SQLitePreparedStatement::sqlPrepare(const long& sqliteHandle, const std::string& sql) {
    sqlite3 *handle = (sqlite3 *)sqliteHandle;

    sqlite3_stmt *stmt_handle;

    int errcode = sqlite3_prepare_v2(handle, sql.c_str(), -1, &stmt_handle, 0);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(handle));
    }

    return (long)stmt_handle;
}

void SQLitePreparedStatement::sqlReset(const long& statementHandle) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_reset(handle);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
}

void SQLitePreparedStatement::sqlFinalize(const long& statementHandle) {
    sqlite3_finalize((sqlite3_stmt *)statementHandle);
}

void SQLitePreparedStatement::sqlBindByteArray(const long& statementHandle, int index, void *value, int length) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_bind_blob(handle, index, value, length,
                                    SQLITE_STATIC);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
}

void SQLitePreparedStatement::sqlBindString(const long& statementHandle, int index, const std::string& value) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode =
            sqlite3_bind_text(handle, index, value.c_str(), -1, SQLITE_TRANSIENT);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
}

void SQLitePreparedStatement::sqlBindInt(const long& statementHandle, int index,
                                      int value) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_bind_int(handle, index, value);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
}

void SQLitePreparedStatement::sqlBindLong(const long& statementHandle, int index,
                                       long value) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_bind_int64(handle, index, value);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
};

void SQLitePreparedStatement::sqlBindDouble(const long& statementHandle, int index,
                                         double value) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_bind_double(handle, index, value);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
};

void SQLitePreparedStatement::sqlBindNull(const long& statementHandle, int index) {
    sqlite3_stmt *handle = (sqlite3_stmt *)statementHandle;

    int errcode = sqlite3_bind_null(handle, index);
    if (SQLITE_OK != errcode) {
        throw std::runtime_error(sqlite3_errmsg(sqlite3_db_handle(handle)));
    }
}