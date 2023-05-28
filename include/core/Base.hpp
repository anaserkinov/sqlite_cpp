#ifndef BASE_H
#define BASE_H

#include "string"
#include "TgObject.h"
#include "FileLog.h"
#include "NativeByteBuffer.h"

class Bool : public TgObject {

public:
    static Bool *TgDeserialize(NativeByteBuffer *stream, uint32_t constructor, bool &error);
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


#endif