
[org 0x7C00]
[bits 16]

start:
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax

    mov si, loading
.print:
    lodsb
    or al, al
    jz .done
    mov ah, 0x0E
    int 0x10
    jmp .print
.done:

    mov ah, 0x02
    mov al, 1
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov dl, 0x80
    mov bx, 0x7E00
    int 0x13

    jmp 0x0000:0x7E00

loading db "Loading VK64 Kernel...", 0

times 510 - ($ - $$) db 0
dw 0xAA55
