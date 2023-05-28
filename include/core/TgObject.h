/*
 * This is the source code of tgnet library v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Nikolai Kudashov, 2015-2018.
 */

#ifndef TG_OBJECT_H
#define TG_OBJECT_H

#include <stdint.h>

class NativeByteBuffer;

class TgObject {

public:
    virtual ~TgObject();
    virtual void readParams(NativeByteBuffer *stream, bool &error);
    virtual void serializeToStream(NativeByteBuffer *stream);
    virtual TgObject *deserializeResponse(NativeByteBuffer *stream, uint32_t constructor, bool &error);
    uint32_t getObjectSize();

    virtual bool isNeedLayer();
};

#endif
