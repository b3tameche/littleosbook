global loader

MAGIC_NUMBER equ 0x1BADB002     ; magic number constant, indicating bootloader-compatible binary
FLAGS        equ 0x0            ; multiboot flags
CHECKSUM     equ -MAGIC_NUMBER  ; checksum (magic number + checksum + flags should equal 0)

section .text
align 4                         ; 4 byte aligned
  dd MAGIC_NUMBER               ; hardcode MAGIC_NUMBER in text segment
  dd FLAGS                      ; hardcode FLAGS in text segment
  dd CHECKSUM                   ; hardcode CHECKSUM in text segment

loader:                         ; entrypoint
  mov eax, 0xCAFEBABE

.loop:                          ; infinite loop
  jmp .loop
