//
// Created by sancar koyunlu on 8/1/13.
// Copyright (c) 2013 hazelcast. All rights reserved.

#ifndef HAZELCAST_iTestFixture
#define HAZELCAST_iTestFixture

#include <vector>
#include <iostream>
#include <map>

namespace iTest {

    struct iTestException {
        std::string message;
    };

    template<typename T>
    class iTestFixture {
        typedef void (T::*TestFunction)();

    public:
        iTestFixture():id(0) {

        };

        virtual void addTests() = 0;

        void beforeClass() {
            static_cast<T *>(this)->beforeClass();
        };

        void afterClass() {
            static_cast<T *>(this)->afterClass();
        };

        void beforeTest() {
            static_cast<T *>(this)->beforeTest();
        };

        void afterTest() {
            static_cast<T *>(this)->afterTest();
        };

        void addTest(TestFunction test, const std::string& name) {
            tests.push_back(test);
            testNames[id++] = name;
        };

        void executeTests() {
            addTests();

            beforeClass();
            T *t = static_cast<T *>(this);
            for (int i = 0; i < tests.size(); i++) {
                TestFunction test = tests[i];
                std::cout << "======= " << testNames[i] << " ======= " << std::endl;
                beforeTest();
                bool isOk = true;
                try{
                    ((*t).* (test))();
                }catch(iTestException& e){
                    std::cout << e.message << std::endl;
                    isOk = false;
                }catch(std::exception& e){
                    std::cout << "? " << e.what() << std::endl;
                }catch(...){
                    std::cout << "unknown exception at iTest " << std::endl;
                }
                afterTest();
                if (isOk)
                    std::cout << "============OK============== " << std::endl;
                else
                    std::cout << "============FAILED============== " << std::endl;
            }
            afterClass();
        };


    private:
        std::vector<TestFunction> tests;
        std::map<int, std::string > testNames;
        int id;
    };
};


#endif //HAZELCAST_iTestFixture