/*
 * This is the source code of tgnet library v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Nikolai Kudashov, 2015-2018.
 */

#include "core/TgObject.h"
#include "core/NativeByteBuffer.h"

thread_local NativeByteBuffer *sizeCalculatorBuffer = new NativeByteBuffer(true);

TgObject::~TgObject() {

}

void TgObject::readParams(NativeByteBuffer *stream, bool &error) {

}

void TgObject::serializeToStream(NativeByteBuffer *stream) {

}

TgObject *TgObject::deserializeResponse(NativeByteBuffer *stream, uint32_t constructor, bool &error) {
    return nullptr;
}

uint32_t TgObject::getObjectSize() {
    sizeCalculatorBuffer->clearCapacity();
    serializeToStream(sizeCalculatorBuffer);
    return sizeCalculatorBuffer->capacity();
}

bool TgObject::isNeedLayer() {
    return false;
}
