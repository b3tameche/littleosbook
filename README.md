# Little OS Book
[Little OS Book](https://ordoflammae.github.io/littleosbook/#programming-languages)

# 2 - First Steps
- create `loader.asm` representing primitive kernel
- compile it to ELF relocatable object file with `nasm`
- link it with custom ld script `link.ld` to produce actual kernel ELF binary
- create primitive `grub.cfg` file with just one menuentry for our OS
- create ISO image using `grub-mkrecue` consisting of kernel binary + grub config
- run bochs using its `bochsrc.txt` config and inspect logs for `0xcafebabe`
