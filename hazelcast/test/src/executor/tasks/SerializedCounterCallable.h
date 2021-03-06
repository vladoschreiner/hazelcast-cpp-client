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

#ifndef HAZELCAST_CLIENT_TEST_EXECUTOR_TASKS_SERIALIZEDCOUNTERCALLABLE_H
#define HAZELCAST_CLIENT_TEST_EXECUTOR_TASKS_SERIALIZEDCOUNTERCALLABLE_H

#include <stdint.h>

#include <hazelcast/client/serialization/IdentifiedDataSerializable.h>

namespace hazelcast {
    namespace client {
        namespace test {
            namespace executor {
                namespace tasks {
                    class SerializedCounterCallable : public serialization::IdentifiedDataSerializable {
                    public:
                        SerializedCounterCallable();

                        virtual int getFactoryId() const;

                        virtual int getClassId() const;

                        virtual void writeData(serialization::ObjectDataOutput &writer) const;

                        virtual void readData(serialization::ObjectDataInput &reader);

                    private:
                        int32_t counter;
                    };
                }
            }
        }
    }
}


#endif //HAZELCAST_CLIENT_TEST_EXECUTOR_TASKS_SERIALIZEDCOUNTERCALLABLE_H
