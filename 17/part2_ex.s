#define TMP %rcx
#define TMP2 %rax
#define TMP2_8bit %al
#define ARG_1 %rdi
#define ARG_2 %rsi
#define REG_A %r15
#define REG_B %r9
#define REG_C %r10
#define OUTPUT %r11
#define CORRECT_DIGITS %r12
#define START_A %r13

.section .rodata
answer:   .asciz "%ld\n"
pgm_code: .byte 0,3,5,4,3,0     # outputs 117440
.set pgm_len, (. - pgm_code)

.section .text 
.global main
main:
        mov $0, START_A
        mov $0, CORRECT_DIGITS
        jmp start_pgm

increment_start_a:
        add $1, START_A
        mov $0, CORRECT_DIGITS

start_pgm:
        mov START_A, REG_A
        mov $0, REG_B
        mov $0, REG_C

# Program:
# 0,3  adv 3
# 5,4, out A
# 3,0  jnz 0
continue:
        shr $3, REG_A           # adv 3
        mov REG_A, OUTPUT       # out A
        and $7, OUTPUT

        # --- Is last output digit correct? ---
        lea pgm_code(%rip), TMP
        add CORRECT_DIGITS, TMP
        movb (TMP), TMP2_8bit
        and $0xff, TMP2
        cmp OUTPUT, TMP2
        jne increment_start_a

        # --- Are all output digits correct? ---
        add $1, CORRECT_DIGITS
        cmp $pgm_len, CORRECT_DIGITS
        jne continue

        cmp $0, REG_A           # jnz 0
        jne increment_start_a

        # --- Print answer ---
        lea  answer(%rip), ARG_1
        mov  START_A, ARG_2
        call printf

exit:
        mov $60, %rax           # $60 = exit()
        mov $0, ARG_1           # error code
        syscall
