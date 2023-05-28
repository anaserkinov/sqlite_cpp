#ifndef OBJECT_HPP
#define OBJECT_HPP

#include <variant>
#include <string>

using Null = std::monostate();
using Object = std::variant<std::monostate, int, double, std::string, long>;

#endif