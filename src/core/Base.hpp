#ifndef BASE_H
#define BASE_H

#include "string"
#include "BTObject.h"
#include "FileLog.h"
#include "NativeByteBuffer.h"

class Bool : public BTObject {

public:
    static Bool *BTdeserialize(NativeByteBuffer *stream, uint32_t constructor, bool &error);
};

class BT_boolTrue : public Bool {

public:
    static const uint32_t constructor = 0x186a1;

    void serializeToStream(NativeByteBuffer *stream);
};

class BT_boolFalse : public Bool {

public:
    static const uint32_t constructor = 0x186a2;

    void serializeToStream(NativeByteBuffer *stream);
};

class Vector {
    public:
    static const uint32_t constructor = 0x186a3;
};

class Data {
    public:
    static const uint32_t constructor = 0x186a4;

    std::string id;
    std::string name;
};


#endif