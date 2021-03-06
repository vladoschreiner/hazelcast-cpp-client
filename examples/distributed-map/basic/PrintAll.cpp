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
//
// Created by İhsan Demir on 21/12/15.
//
#include <hazelcast/client/HazelcastClient.h>

int main() {
    hazelcast::client::ClientConfig config;
    hazelcast::client::HazelcastClient hz(config);

    hazelcast::client::IMap<std::string, std::string> map = hz.getMap<std::string, std::string>("map");
    std::vector<std::pair<std::string, std::string> > entries = map.entrySet();
    for (std::vector<std::pair<std::string, std::string> >::const_iterator it = entries.begin();
         it != entries.end(); ++it) {
        std::cout << it->first << " " << it->second << std::endl;
    }

    std::cout << "Finished" << std::endl;

    return 0;
}
