/*
 * Copyright (c) 2008-2019, Hazelcast, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "hazelcast/util/Util.h"
#include "hazelcast/util/ILogger.h"

#include "hazelcast/client/protocol/codec/TransactionalListSizeCodec.h"

namespace hazelcast {
    namespace client {
        namespace protocol {
            namespace codec {
                const TransactionalListMessageType TransactionalListSizeCodec::REQUEST_TYPE = HZ_TRANSACTIONALLIST_SIZE;
                const bool TransactionalListSizeCodec::RETRYABLE = false;
                const ResponseMessageConst TransactionalListSizeCodec::RESPONSE_TYPE = (ResponseMessageConst) 102;

                std::auto_ptr<ClientMessage> TransactionalListSizeCodec::encodeRequest(
                        const std::string &name,
                        const std::string &txnId,
                        int64_t threadId) {
                    int32_t requiredDataSize = calculateDataSize(name, txnId, threadId);
                    std::auto_ptr<ClientMessage> clientMessage = ClientMessage::createForEncode(requiredDataSize);
                    clientMessage->setMessageType((uint16_t) TransactionalListSizeCodec::REQUEST_TYPE);
                    clientMessage->setRetryable(RETRYABLE);
                    clientMessage->set(name);
                    clientMessage->set(txnId);
                    clientMessage->set(threadId);
                    clientMessage->updateFrameLength();
                    return clientMessage;
                }

                int32_t TransactionalListSizeCodec::calculateDataSize(
                        const std::string &name,
                        const std::string &txnId,
                        int64_t threadId) {
                    int32_t dataSize = ClientMessage::HEADER_SIZE;
                    dataSize += ClientMessage::calculateDataSize(name);
                    dataSize += ClientMessage::calculateDataSize(txnId);
                    dataSize += ClientMessage::calculateDataSize(threadId);
                    return dataSize;
                }

                TransactionalListSizeCodec::ResponseParameters::ResponseParameters(ClientMessage &clientMessage) {


                    response = clientMessage.get<int32_t>();

                }

                TransactionalListSizeCodec::ResponseParameters
                TransactionalListSizeCodec::ResponseParameters::decode(ClientMessage &clientMessage) {
                    return TransactionalListSizeCodec::ResponseParameters(clientMessage);
                }


            }
        }
    }
}

