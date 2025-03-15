# frozen_string_literal: true

# --- Part Two ---
#
# Digging deeper in the device's manual, you discover the problem: this program is supposed to
# output another copy of the program! Unfortunately, the value in register A seems to have been
# corrupted. You'll need to find a new value to which you can initialize register A so that the
# program's output instructions produce an exact copy of the program itself.
#
# For example:
#
# Register A: 2024
# Register B: 0
# Register C: 0
#
# Program: 0,3,5,4,3,0
#
# This program outputs a copy of itself if register A is instead initialized to 117440. (The
# original initial value of register A, 2024, is ignored.)
#
# What is the lowest positive initial value for register A that causes the program to output a copy
# of itself?

EXAMPLE = <<~TEXT
  Register A: 2024
  Register B: 0
  Register C: 0

  Program: 0,3,5,4,3,0
TEXT

# adv 3
# out A
# jnz 0

PUZZLE_INPUT = <<~TEXT
  Register A: 18427963
  Register B: 0
  Register C: 0

  Program: 2,4,1,1,7,5,0,3,4,3,1,6,5,5,3,0
TEXT

# bst A   B = A & 7
# bxl 1   B = B & 1
# cdv B   C = A >> B
# adv 3   A = A >> 3
# bxc     B = B ^ C
# bxl 6   B = B & C
# out B
# jnz 0

OPCODES = {
  0 => 'adv',
  1 => 'bxl',
  2 => 'bst',
  3 => 'jnz',
  4 => 'bxc',
  5 => 'out',
  6 => 'bdv',
  7 => 'cdv'
}.freeze

def main(input)
  pgm = nil
  input.lines.each { pgm = $1.split(',').map(&:to_i) if _1 =~ /Program: ([,0-9]+)/ }

  (0..pgm.length / 2).each { print OPCODES[pgm[2 * _1]], ' ', pgm[(2 * _1) + 1], "\n" }

  (0..).find { run(pgm, _1) }
end

def run(pgm, reg_a)
  output_length = pc = reg_b = reg_c = 0
  # exit if reg_a > 10_000
  while pgm[pc]
    # printf "%s %7d %7d %7d [%d] '%s'\n", OPCODES[pgm[pc]], reg_a, reg_b, reg_c, pc, pgm[0, output_length].join(',')
    operand = pgm[pc + 1]
    case pgm[pc]
    # The adv instruction (opcode 0) performs division. The numerator is the value in the A
    # register. The denominator is found by raising 2 to the power of the instruction's combo
    # operand. (So, an operand of 2 would divide A by 4 (2^2); an operand of 5 would divide A by
    # 2^B.) The result of the division operation is truncated to an integer and then written to the
    # A register.
    when 0 then reg_a >>= combo(operand, reg_a, reg_b, reg_c)
    # The bxl instruction (opcode 1) calculates the bitwise XOR of register B and the instruction's
    # literal operand, then stores the result in register B.
    when 1 then reg_b ^= operand
    # The bst instruction (opcode 2) calculates the value of its combo operand modulo 8 (thereby
    # keeping only its lowest 3 bits), then writes that value to the B register.
    when 2 then reg_b = combo(operand, reg_a, reg_b, reg_c) % 8
    # The jnz instruction (opcode 3) does nothing if the A register is 0. However, if the A
    # register is not zero, it jumps by setting the instruction pointer to the value of its literal
    # operand; if this instruction jumps, the instruction pointer is not increased by 2 after this
    # instruction.
    when 3 then pc = operand - 2 if reg_a != 0
    # The bxc instruction (opcode 4) calculates the bitwise XOR of register B and register C, then
    # stores the result in register B. (For legacy reasons, this instruction reads an operand but
    # ignores it.)
    when 4 then reg_b ^= reg_c
    # The out instruction (opcode 5) calculates the value of its combo operand modulo 8, then
    # outputs that value. (If a program outputs multiple values, they are separated by commas.)
    when 5
      return false if pgm[output_length] != combo(operand, reg_a, reg_b, reg_c) % 8

      output_length += 1
      # puts initial_a => output_length
      return true if output_length == pgm.length
    # The bdv instruction (opcode 6) works exactly like the adv instruction except that the result
    # is stored in the B register. (The numerator is still read from the A register.)
    when 6 then reg_b = reg_a >> combo(operand, reg_a, reg_b, reg_c)
    # The cdv instruction (opcode 7) works exactly like the adv instruction except that the result
    # is stored in the C register. (The numerator is still read from the A register.)
    when 7 then reg_c = reg_a >> combo(operand, reg_a, reg_b, reg_c)
    else raise "Unknown opcode: #{pgm[pc]} at #{pc}"
    end
    pc += 2
  end
  false
end

def combo(raw, reg_a, reg_b, reg_c)
  case raw
  when 0..3 then raw # Combo operands 0 through 3 represent literal values 0 through 3.
  when 4 then reg_a # Combo operand 4 represents the value of register A.
  when 5 then reg_b # Combo operand 5 represents the value of register B.
  when 6 then reg_c # Combo operand 6 represents the value of register C.
  else raise "Unknown operand: #{raw.inspect}"
  end
end

p main(EXAMPLE)
# p main(PUZZLE_INPUT)

puts 'ok'
