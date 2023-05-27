#include "Base.hpp"

Bool *Bool::BTdeserialize(NativeByteBuffer *stream, uint32_t constructor, bool &error) {
    Bool *result = nullptr;
    switch (constructor) {
        case 0x186a1:
            result = new BT_boolTrue();
            break;
        case 0x186a2:
            result = new BT_boolFalse();
            break;
        default:
            error = true;
            if (LOGS_ENABLED) DEBUG_FATAL("can't parse magic %x in Bool", constructor);
            return nullptr;
    }
    result->readParams(stream, error);
    return result;
}

void BT_boolTrue::serializeToStream(NativeByteBuffer *stream) {
    stream->writeInt32(constructor);
}

void BT_boolFalse::serializeToStream(NativeByteBuffer *stream) {
    stream->writeInt32(constructor);
}