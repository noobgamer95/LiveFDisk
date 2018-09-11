nasm -f bin -o monos.bin monos.asm

qemu-img create monos.qcow 10M

dd status=noxfer conv=notrunc if=monos.bin of=monos.qcow

qemu-system-i386 -S -hda monos.qcow -m 256 -hdb ./discus/hdd.img

