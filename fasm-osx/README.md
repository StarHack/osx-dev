# fasm-osx

## About

Small attempt of mine making FASM work with OSX. As of now, the project is very unstable and still work-in-progress. Created binaries crash at the end of their execution due to incorrectly fixed libc.

## Usage

Clone the project using:

    git clone https://github.com/StarHack/osx-dev/tree/master/fasm-osx
    
Use the provided `build.sh` to compile `objconv` and `fasm`.

    ./build.sh init
    
Afterwards an `fasm` binary should have been created inside of the `bin` folder. You may either use it directly or call:

    ./build.sh examples/helloworld/hello.asm
    
in order to create ready-to-run binaries.