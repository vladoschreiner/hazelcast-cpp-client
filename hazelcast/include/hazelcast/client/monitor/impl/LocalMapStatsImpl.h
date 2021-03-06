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
#ifndef HAZELCAST_CLIENT_MONITOR_IMPL_LOCALMAPSTATSIMPL_H_
#define HAZELCAST_CLIENT_MONITOR_IMPL_LOCALMAPSTATSIMPL_H_

#include <boost/shared_ptr.hpp>

#include "hazelcast/util/Atomic.h"
#include "hazelcast/util/HazelcastDll.h"
#include "hazelcast/client/monitor/LocalMapStats.h"

#if  defined(WIN32) || defined(_WIN32) || defined(WIN64) || defined(_WIN64)
#pragma warning(push)
#pragma warning(disable: 4251) //for dll export
#endif

namespace hazelcast {
    namespace client {
        namespace monitor {
            namespace impl {
                class HAZELCAST_API LocalMapStatsImpl : public LocalMapStats {
                public:
                    LocalMapStatsImpl();

                    virtual monitor::NearCacheStats *getNearCacheStats();

                    void setNearCacheStats(NearCacheStats &stats);
                private:
                    util::Atomic<monitor::NearCacheStats* > nearCacheStats;
                };
            }
        }
    }
}

#if  defined(WIN32) || defined(_WIN32) || defined(WIN64) || defined(_WIN64)
#pragma warning(pop)
#endif

#endif /* HAZELCAST_CLIENT_MONITOR_IMPL_LOCALMAPSTATSIMPL_H_ */

