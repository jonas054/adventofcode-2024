.section .rodata
digits: .ascii "0123456789"
comma: .ascii ","
newline: .ascii "\n"
format: .asciz "<A=%d, B=%d, C=%d>\n"

.section .text 
.global main
main:
        mov $729, %r8                # A
        mov $0, %r9                  # B
        mov $0, %r10                 # C
        call start_example
        mov $18427963, %r8           # A
        mov $0, %r9                  # B
        mov $0, %r10                 # C
        call start_puzzle
        jmp exit

write_comma:
        lea comma(%rip), %rsi         # rsi: const char* buf
        call print_char

# Should output 4,6,3,5,6,3,5,2,1,0
start_example:
        # adv 1
        shr $1, %r8
        # out A
        mov %r8, %r11
        and $7, %r11
        
        lea digits(%rip), %rsi        # rsi: const char* buf
        add %r11, %rsi
        call print_char

        test %r8, %r8
        # jnz 0
        jnz write_comma

        lea newline(%rip), %rsi       # rsi: const char* buf
        call print_char
        ret

write_comma_2:
        lea comma(%rip), %rsi         # rsi: const char* buf
        call print_char

# Program:
# 2,4, bst A
# 1,1, bxl 1
# 7,5, cdv B
# 0,3, adv 3
# 4,_, bxc
# 1,6, bxl 6
# 5,5, out B
# 3,0  jnz 0
#
# Should output 2,0,7,3,0,3,1,3,7
start_puzzle:
        #-------- debug
        # mov  %r8, %rsi
        # mov  %r9, %rdx
        # mov  %r10, %rcx
        # call print_numbers
        #==============
        # bst A   B = A & 7
        mov %r8, %r9
        and $7, %r9
        # bxl 1   B = B ^ 1
        xor $1, %r9
        # cdv B   C = A >> B
        mov %r8, %r10
        mov %r9, %rcx
        shr %cl, %r10
        # adv 3   A = A >> 3
        shr $3, %r8
        # bxc     B = B ^ C
        xor %r10, %r9
        # bxl 6   B = B ^ 6
        xor $6, %r9
        # out B
        mov %r9, %r11
        and $7, %r11
        lea digits(%rip), %rsi        # rsi: const char* buf
        add %r11, %rsi
        call print_char
        # jnz 0
        test %r8, %r8
        jnz write_comma_2

        lea newline(%rip), %rsi       # rsi: const char* buf
        call print_char
        ret
        
print_char:
        mov $1, %rax                  # $1 = write()
        mov $1, %rdi                  # $1 = stdout
        mov $1, %rdx                  # rdx: size_t count
        syscall
        ret

print_numbers:
        push %r8
        push %r9
        push %r10
        push %rbx
        lea  format(%rip), %rdi
        xor %eax, %eax          # Zeroing EAX is efficient way to clear AL.
        call printf
        pop %rbx
        pop %r10
        pop %r9
        pop %r8
        ret
        
exit:
        mov $60, %rax                 # $60 = exit()
        mov $0, %rdi                  # rdi: error code
        syscall
