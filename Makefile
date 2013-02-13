CC=clang++
OUT=p.out
RM=rm -f

OBJS=./obj/hazelcast/client/serialization/DefaultPortableWriter.o ./obj/hazelcast/client/ISemaphore.o ./obj/hazelcast/client/ClientConfig.o ./obj/hazelcast/client/serialization/MorphingPortableReader.o ./obj/hazelcast/client/serialization/DataInput.o ./obj/hazelcast/client/serialization/Data.o ./obj/hazelcast/client/serialization/FieldDefinition.o ./obj/hazelcast/client/GroupConfig.o ./obj/hazelcast/client/IdGenerator.o ./obj/hazelcast/client/serialization/ClassDefinition.o ./obj/hazelcast/client/Address.o ./obj/hazelcast/client/serialization/ClassDefinitionWriter.o ./obj/hazelcast/client/ClientService.o ./obj/hazelcast/client/serialization/PortableSerializer.o ./obj/hazelcast/client/HazelcastClient.o ./obj/hazelcast/client/ICountDownLatch.o ./obj/main.o ./obj/hazelcast/client/serialization/SerializationService.o ./obj/hazelcast/client/protocol/CommandHandler.o ./obj/hazelcast/client/serialization/PortableReader.o ./obj/hazelcast/client/AtomicNumber.o ./obj/hazelcast/client/serialization/DataOutput.o ./obj/hazelcast/client/protocol/Socket.o ./obj/hazelcast/client/serialization/SerializationContext.o

CFLAGS=-std=c++11 -stdlib=libc++
LFLAGS=-std=c++11 -stdlib=libc++ /usr/local/lib/libz.a

all: $(OUT)
	echo "Finished."

$(OUT): $(OBJS)
	echo "Linking $(OUT)..."
	$(CC) $(LFLAGS) $(OBJS) -o $(OUT)

./obj/hazelcast/client/Address.o: ./hazelcast/client/Address.cpp ./hazelcast/client/Address.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/AtomicNumber.o: ./hazelcast/client/AtomicNumber.cpp ./hazelcast/client/AtomicNumber.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/ClientConfig.o: ./hazelcast/client/ClientConfig.cpp ./hazelcast/client/Address.cpp ./hazelcast/client/Address.h ./hazelcast/client/ClientConfig.h ./hazelcast/client/GroupConfig.cpp ./hazelcast/client/GroupConfig.h ./hazelcast/client/serialization/PortableFactory.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/ClientService.o: ./hazelcast/client/ClientService.cpp ./hazelcast/client/ClientConfig.cpp ./hazelcast/client/ClientConfig.h ./hazelcast/client/ClientService.h ./hazelcast/client/HazelcastClient.cpp ./hazelcast/client/HazelcastClient.h ./hazelcast/client/protocol/CommandHandler.cpp ./hazelcast/client/protocol/CommandHandler.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/GroupConfig.o: ./hazelcast/client/GroupConfig.cpp ./hazelcast/client/GroupConfig.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/HazelcastClient.o: ./hazelcast/client/HazelcastClient.cpp ./hazelcast/client/AtomicNumber.cpp ./hazelcast/client/AtomicNumber.h ./hazelcast/client/ClientConfig.cpp ./hazelcast/client/ClientConfig.h ./hazelcast/client/HazelcastClient.h ./hazelcast/client/ICountDownLatch.cpp ./hazelcast/client/ICountDownLatch.h ./hazelcast/client/IList.h ./hazelcast/client/IMap.h ./hazelcast/client/IQueue.h ./hazelcast/client/ISemaphore.cpp ./hazelcast/client/ISemaphore.h ./hazelcast/client/ISet.h ./hazelcast/client/IdGenerator.cpp ./hazelcast/client/IdGenerator.h ./hazelcast/client/MultiMap.h ./hazelcast/client/protocol/CommandHandler.cpp ./hazelcast/client/protocol/CommandHandler.h ./hazelcast/client/protocol/GeneralCommands.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/ICountDownLatch.o: ./hazelcast/client/ICountDownLatch.cpp ./hazelcast/client/ICountDownLatch.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/ISemaphore.o: ./hazelcast/client/ISemaphore.cpp ./hazelcast/client/ISemaphore.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/IdGenerator.o: ./hazelcast/client/IdGenerator.cpp ./hazelcast/client/IdGenerator.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/protocol/CommandHandler.o: ./hazelcast/client/protocol/CommandHandler.cpp ./hazelcast/client/protocol/Command.h ./hazelcast/client/protocol/CommandHandler.h ./hazelcast/client/protocol/Socket.cpp ./hazelcast/client/protocol/Socket.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/protocol/Socket.o: ./hazelcast/client/protocol/Socket.cpp ./hazelcast/client/Address.cpp ./hazelcast/client/Address.h ./hazelcast/client/protocol/Socket.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/ClassDefinition.o: ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/DataSerializable.h ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/FieldDefinition.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/ClassDefinitionWriter.o: ./hazelcast/client/serialization/ClassDefinitionWriter.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/ClassDefinitionWriter.h ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/FieldDefinition.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/PortableSerializer.h ./hazelcast/client/serialization/PortableWriter.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/Data.o: ./hazelcast/client/serialization/Data.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/Data.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/DataSerializable.h ./hazelcast/client/serialization/SerializationContext.cpp ./hazelcast/client/serialization/SerializationContext.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/DataInput.o: ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/Data.cpp ./hazelcast/client/serialization/Data.h ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/SerializationContext.cpp ./hazelcast/client/serialization/SerializationContext.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/DataOutput.o: ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/DefaultPortableWriter.o: ./hazelcast/client/serialization/DefaultPortableWriter.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/DefaultPortableWriter.h ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/FieldDefinition.h ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/PortableSerializer.h ./hazelcast/client/serialization/PortableWriter.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/FieldDefinition.o: ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/DataSerializable.h ./hazelcast/client/serialization/FieldDefinition.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/MorphingPortableReader.o: ./hazelcast/client/serialization/MorphingPortableReader.cpp ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/FieldDefinition.h ./hazelcast/client/serialization/MorphingPortableReader.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/PortableReader.cpp ./hazelcast/client/serialization/PortableReader.h ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/PortableSerializer.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/PortableReader.o: ./hazelcast/client/serialization/PortableReader.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/FieldDefinition.cpp ./hazelcast/client/serialization/FieldDefinition.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/PortableReader.h ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/PortableSerializer.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/PortableSerializer.o: ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/ClassDefinitionWriter.cpp ./hazelcast/client/serialization/ClassDefinitionWriter.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/DefaultPortableWriter.cpp ./hazelcast/client/serialization/DefaultPortableWriter.h ./hazelcast/client/serialization/MorphingPortableReader.cpp ./hazelcast/client/serialization/MorphingPortableReader.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/PortableReader.cpp ./hazelcast/client/serialization/PortableReader.h ./hazelcast/client/serialization/PortableSerializer.h ./hazelcast/client/serialization/SerializationConstants.h ./hazelcast/client/serialization/SerializationContext.cpp ./hazelcast/client/serialization/SerializationContext.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/SerializationContext.o: ./hazelcast/client/serialization/SerializationContext.cpp ./hazelcast/client/serialization/ClassDefinition.cpp ./hazelcast/client/serialization/ClassDefinition.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/SerializationContext.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/hazelcast/client/serialization/SerializationService.o: ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/ConstantSerializers.h ./hazelcast/client/serialization/Data.cpp ./hazelcast/client/serialization/Data.h ./hazelcast/client/serialization/DataInput.cpp ./hazelcast/client/serialization/DataInput.h ./hazelcast/client/serialization/DataOutput.cpp ./hazelcast/client/serialization/DataOutput.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/PortableFactory.h ./hazelcast/client/serialization/PortableSerializer.cpp ./hazelcast/client/serialization/PortableSerializer.h ./hazelcast/client/serialization/SerializationConstants.h ./hazelcast/client/serialization/SerializationContext.cpp ./hazelcast/client/serialization/SerializationContext.h ./hazelcast/client/serialization/SerializationService.h ./hazelcast/client/serialization/TypeSerializer.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

./obj/main.o: ./main.cpp ./SimpleMapTest.h ./TestInnerPortable.h ./TestMainPortable.h ./TestNamedPortable.h ./TestPortableFactory.h ./hazelcast/client/ClientConfig.cpp ./hazelcast/client/ClientConfig.h ./hazelcast/client/GroupConfig.cpp ./hazelcast/client/GroupConfig.h ./hazelcast/client/HazelcastClient.cpp ./hazelcast/client/HazelcastClient.h ./hazelcast/client/IMap.h ./hazelcast/client/serialization/Data.cpp ./hazelcast/client/serialization/Data.h ./hazelcast/client/serialization/Portable.h ./hazelcast/client/serialization/SerializationService.cpp ./hazelcast/client/serialization/SerializationService.h
	echo "Compiling $< to $@..."
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OUT)
	$(RM) $(OBJS)

.SILENT:
