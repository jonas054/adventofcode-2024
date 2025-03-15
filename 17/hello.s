.section .rodata
msg: .ascii "Hello, World!\n"
.set msglen, (. - msg)

.section .text 
.global main
main:
  mov $1, %rax                  # $1 = write()
  mov $1, %rdi                  # $1 = stdout
  lea msg(%rip), %rsi           # rsi: const char* buf
  mov $msglen, %rdx             # rdx: size_t count
  syscall

  mov $60, %rax                 # $60 = exit()
  mov $0, %rdi                  # rdi: error code
  syscall
