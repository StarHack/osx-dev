#!/bin/bash

if [ "$1" == "init" ]; then
  g++ -o bin/objconv -O2 util/objconv/*.cpp
  ./bin/objconv -fmacho32 -nu fasm.o fasm_mach32.o
  ld -arch i386 -o bin/fasm fasm_mach32.o -lc
  rm fasm_mach32.o
  exit
fi

if [ "$1" == "" ]; then
  echo "Usage: examples/helloworld/hello.asm"
  exit
fi

./bin/fasm_prepatched "$1" out.o
./bin/objconv -fmacho32 -nu out.o out_mach32.o
ld -arch i386 -o "$1.bin" out_mach32.o -lc
rm out.o
rm out_mach32.o

echo "----------------------------------------"
echo "BUILD SUCCESSFUL"
echo "Usage: ./$1.bin"
echo "----------------------------------------"
