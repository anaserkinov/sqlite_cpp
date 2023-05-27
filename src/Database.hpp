#ifndef DATABASE_HPP
#define DATABASE_HPP

#include "SQLiteDatabase.hpp"
#include "cstring"
#include <variant>
#include <vector>
#include "using/types.hpp"
#include "using/collection.hpp"
#include "using/object.hpp"
#include "using/database.hpp"

class Cursor;
class PreparedStatement;

class Database : public SQLiteDatabase {
    long sqliteHandle;
    bool isOpen = false;
    bool inTransaction = false;

public:
    long& getSQLiteHandle();
    Database(String fileName);
    bool tableExists(String tableName);
    PreparedStatementPtr executeFast(const String& sql);
    Int executeInt(const String& sql, List<Object>& args);
    void explainQuery(const String& sql, List<Object>& args);
    CursorPtr queryFinalized(String sql, List<Object>& args);
    void close();
    void checkOpened();
    void finalize();
    void beginTransaction();
    void commitTransaction();
};

#endif