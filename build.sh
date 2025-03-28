
#!/bin/bash
nasm -f bin boot/boot.asm -o bootloader.bin
nasm -f bin kernel/kernel.asm -o kernel.bin
cat bootloader.bin kernel.bin > vk64.img
qemu-system-x86_64 -drive format=raw,file=vk64.img
