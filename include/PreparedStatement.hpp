#ifndef PREPAREDSTATEMENT_HPP
#define PREPAREDSTATEMENT_HPP

#include <chrono>
#include "core/types.hpp"
#include "core/collection.hpp"
#include "core/object.hpp"
#include "core/database.hpp"

#include "core/NativeByteBuffer.h"
#include "SQLitePreparedStatement.hpp"

class Cursor;
class Database;

class PreparedStatement : public SQLitePreparedStatement {
    int64_t getTime() {
        auto now = std::chrono::system_clock::now();
        auto millis = std::chrono::time_point_cast<std::chrono::milliseconds>(now).time_since_epoch().count();
        return millis;
    }

public:
    bool isFinalized = false;
    long sqliteStatementHandle;
    int64_t startTime;
    String mQuery;

    PreparedStatement(Database& db, const String& sql);
    CursorPtr query(const List<Object>& args);
    int step();
    PreparedStatement& stepThis();
    void requery();
    void dispose();
    void checkFinalized();
    void finalizeQuery();
    void bindInt32(int index, int32_t value);
    void bindDouble(int index, double value);
    void bindByteArray(int index, uint8_t* value, int length);
    void bindByteBuffer(int index, NativeByteBuffer& value);
    void bindString(int index, const String& value);
    void bindInt64(int index, int64_t value);
    void bindNull(int index);
};

#endif