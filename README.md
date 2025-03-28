
# VK64 Rebuild

Sistema operativo en dos etapas:
1. Bootloader de 512 bytes que carga el kernel
2. Kernel mínimo en modo real desde el segundo sector

## Cómo correr

```bash
chmod +x build.sh
./build.sh
```

## Requisitos

```bash
sudo apt install nasm qemu -y
```

## Qué hace

- Muestra "Loading VK64 Kernel..."
- Lee el segundo sector (kernel)
- Muestra "VK64 Kernel running from second sector!"
- Se queda en loop seguro
