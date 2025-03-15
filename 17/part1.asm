.section .rodata
digits: .ascii "0123456789"
comma: .ascii ","
newline: .ascii "\n"

.section .text 
.global main
main:
        mov $729, %r8                # A
        mov $0, %r9                  # B
        mov $0, %r10                 # C
        call start_example
        jmp exit

write_comma:
        lea comma(%rip), %rsi         # rsi: const char* buf
        call print_char

start_example:
        # adv 1
        shr $1, %r8
        # out A
        mov %r8, %r11
        and $7, %r11
        
        lea digits(%rip), %rsi        # rsi: const char* buf
        add %r11,%rsi
        call print_char

        test %r8,%r8
        # jnz 0
        jnz write_comma

        lea newline(%rip), %rsi       # rsi: const char* buf
        call print_char
        ret

print_char:
        mov $1, %rax                  # $1 = write()
        mov $1, %rdi                  # $1 = stdout
        mov $1, %rdx                  # rdx: size_t count
        syscall
        ret

exit:
        mov $60, %rax                 # $60 = exit()
        mov $0, %rdi                  # rdi: error code
        syscall
