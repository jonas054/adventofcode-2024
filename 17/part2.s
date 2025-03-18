#define TMP %rcx
#define TMP_8bit %cl
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
pgm_code: .byte 2,4,1,1,7,5,0,3,4,3,1,6,5,5,3,0
.set pgm_len, (. - pgm_code)

.section .text 
.global main
main:
        mov $0x3ba98ba, START_A         # first value based on test runs, see table at bottom
        mov $0, CORRECT_DIGITS
        jmp start_pgm

increment_start_a:
        add $0x10000000, START_A        # step value based on test runs, see table at bottom
        mov $0, CORRECT_DIGITS

start_pgm:
        mov START_A, REG_A
        mov $0, REG_B
        mov $0, REG_C

# Program:
# 2,4, bst A
# 1,1, bxl 1
# 7,5, cdv B
# 0,3, adv 3
# 4,_, bxc
# 1,6, bxl 6
# 5,5, out B
# 3,0  jnz 0
continue:
        mov REG_A, REG_B        # bst A   B = A & 7
        and $7, REG_B
        xor $1, REG_B           # bxl 1   B = B ^ 1
        mov REG_A, REG_C        # cdv B   C = A >> B
        mov REG_B, TMP
        shr TMP_8bit, REG_C
        shr $3, REG_A           # adv 3   A = A >> 3
        xor REG_C, REG_B        # bxc     B = B ^ C
        xor $6, REG_B           # bxl 6   B = B ^ 6
        mov REG_B, OUTPUT       # out B
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

        mov $60, %rax           # $60 = exit()
        mov $0, ARG_1           # error code
        syscall

        # correct digits:  hex              dec
        # 5:            0x98ba            39098
        # 6:          0x3a98ba          3840186
        # 7:          0x3e98ba          4102330
        # 8:         0x2ba98ba         45783226
        # 9:         0x3ba98ba         62560442
        # 10:       0x23ba98ba        599431354
        # 11:      0x8a3ba98ba      37106653370
        # 12:     0x17c3ba98ba     102068033722
        # 13:    0x758a3ba98ba    8077285431482
        # 14:   0x2168a3ba98ba   36733307230394
        # 15:   0x2168a3ba98ba   36733307230394
        # 16:   0xe168a3ba98ba  247839539763386
