set -e #abort the script at first faiure

echo "Cleanup release directories"
rm -rf ./Release*
rm -rf ./cpp

echo "Compiling Static 32bit library"
mkdir ReleaseStatic32;
cd ./ReleaseStatic32;
cmake .. -DHZ_LIB_TYPE=STATIC -DHZ_BIT=32 -DCMAKE_BUILD_TYPE=Release
make;
cd ..;

echo "Compiling Shared 32bit library"
mkdir ReleaseShared32;
cd ./ReleaseShared32;
cmake .. -DHZ_LIB_TYPE=SHARED -DHZ_BIT=32 -DCMAKE_BUILD_TYPE=Release
make;
cd ..;


echo "Moving 32bit libraries to target"
mkdir -p ./cpp/Linux_32/hazelcast/include/hazelcast/
mkdir -p ./cpp/Linux_32/hazelcast/lib
mkdir -p ./cpp/Linux_32/external/include
mkdir -p ./cpp/Linux_32/external/lib
mkdir -p ./cpp/Linux_32/examples/

cp -R hazelcast/include/hazelcast/* cpp/Linux_32/hazelcast/include/hazelcast/
cp ReleaseShared32/libHazelcastClient* cpp/Linux_32/hazelcast/lib/
cp ReleaseStatic32/libHazelcastClient* cpp/Linux_32/hazelcast/lib/

echo "Moving 32bit external libraries to target"
cp -R external/include/* cpp/Linux_32/external/include/
cp -R external/lib/linux/32/* cpp/Linux_32/external/lib/

echo "Moving 32bit examples to target"
cp examples/*cpp cpp/Linux_32/examples/
cp ReleaseStatic32/examples/*exe cpp/Linux_32/examples/

echo "Clearing temporary 32bit libraries"
rm -rf ./ReleaseShared32
rm -rf ./ReleaseStatic32

echo "Compiling Static 64bit library"
mkdir ReleaseStatic64;
cd ./ReleaseStatic64;
cmake .. -DHZ_LIB_TYPE=STATIC -DHZ_BIT=64 -DCMAKE_BUILD_TYPE=Release
make;
cd ..;

echo "Compiling Shared 64bit library"
mkdir ReleaseShared64;
cd ./ReleaseShared64;
cmake .. -DHZ_LIB_TYPE=SHARED -DHZ_BIT=64 -DCMAKE_BUILD_TYPE=Release
make;
cd ..;


echo "Moving 64bit libraries to target"
mkdir -p ./cpp/Linux_64/hazelcast/include/hazelcast/
mkdir -p ./cpp/Linux_64/hazelcast/lib
mkdir -p ./cpp/Linux_64/external/include
mkdir -p ./cpp/Linux_64/external/lib
mkdir -p ./cpp/Linux_64/examples/

cp -R hazelcast/include/hazelcast/* cpp/Linux_64/hazelcast/include/hazelcast/
cp ReleaseShared64/libHazelcastClient* cpp/Linux_64/hazelcast/lib/
cp ReleaseStatic64/libHazelcastClient* cpp/Linux_64/hazelcast/lib/

echo "Moving 64bit external libraries to target"
cp -R external/include/* cpp/Linux_64/external/include/
cp -R external/lib/linux/64/* cpp/Linux_64/external/lib/

echo "Moving 64bit examples to target"
cp examples/*cpp cpp/Linux_64/examples/
cp ReleaseStatic64/examples/*exe cpp/Linux_64/examples/

echo "Clearing temporary 64bit libraries"
rm -rf ./ReleaseShared64
rm -rf ./ReleaseStatic64
