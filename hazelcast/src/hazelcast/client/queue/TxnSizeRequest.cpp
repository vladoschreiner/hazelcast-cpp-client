//
// Created by sancar koyunlu on 8/5/13.
// Copyright (c) 2013 hazelcast. All rights reserved.


#include "TxnSizeRequest.h"
#include "QueuePortableHook.h"

namespace hazelcast {
    namespace client {
        namespace queue {
            TxnSizeRequest::TxnSizeRequest(const std::string& name)
            :name(name) {

            }

            int TxnSizeRequest::getFactoryId() const {
                return QueuePortableHook::F_ID;
            }

            int TxnSizeRequest::getClassId() const {
                return QueuePortableHook::TXN_SIZE;
            }


        }
    }
}