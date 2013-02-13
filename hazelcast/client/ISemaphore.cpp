#include "ISemaphore.h"

namespace hazelcast {
    namespace client {

        ISemaphore::ISemaphore(std::string instanceName, ClientService& clientService) : instanceName(instanceName)
        , clientService(clientService) {

        };

        ISemaphore::ISemaphore(const ISemaphore& rhs) : instanceName(rhs.instanceName)
        , clientService(rhs.clientService) {
        };

        ISemaphore::~ISemaphore() {

        };

        std::string ISemaphore::getName() const {
            return instanceName;
        };

    }
}