#include <memory>
#include "PreparedStatement.hpp"
#include "Cursor.hpp"

using PreparedStatementPtr = std::unique_ptr<PreparedStatement>;
using CursorPtr = std::unique_ptr<Cursor>;
