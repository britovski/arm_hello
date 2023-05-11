# arm_hello
ARM Quick Start

## Task definition
You need to have a working setup. See my scripts to setup (Reference: https://github.com/britovski/micro_skel).

Clone this repository or copy the source files to your working directory

## Hello World

You can use the hello.arm, hello64.asm and hello.c provided here to test the flow.

Suppose that the sources are in ~/micro_skel/arm_hello/sources

        cd ~/micro_skel/arm_hello/sources

Begin to use the toolchain to generate 64-bit binaries from assembly:

        aarch64-none-linux-gnu-as hello64.asm -o hello64.o
        aarch64-none-linux-gnu-ld hello64.o -o hello64

Then run using QEMU Simulator:

        qemu-aarch64 -L /opt/arm/arm-gnu-toolchain-12.2.rel1-x86_64-aarch64-none-linux-gnu/aarch64-none-linux-gnu/libc/ hello64
    
To compile the .c program, use:

        aarch64-none-linux-gnu-gcc hello.c -o hello64

To compile the .c program for 32-bit binary, use:

        arm-none-linux-gnueabihf-gcc hello.c -o hello32
        
Then run using QEMU simulator for 32-bit kernel:

        qemu-arm -L /opt/arm/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-linux-gnueabihf/arm-none-linux-gnueabihf/libc hello32
        
Use also `file` command to compare the two binaries:

        file hello64
        file hello32
        
To compile 32-bit ARM hello.asm you can use:

        arm-none-linux-gnueabihf-as hello.asm -o hello32.o
        arm-none-linux-gnueabihf-ld hello32.o -o hello32

Enjoy!
