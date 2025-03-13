# frozen_string_literal: true

EXAMPLE = [
  '190: 10 19',
  '3267: 81 40 27',
  '83: 17 5',
  '156: 15 6',
  '7290: 6 8 6 15',
  '161011: 16 10 13',
  '192: 17 8 14',
  '21037: 9 7 18 13',
  '292: 11 6 16 20'
].freeze

def can_be?(result, numbers)
  return result == 0 if numbers.empty?

  n, *rest = numbers
  can_be?(result - n, rest) || result % n == 0 && can_be?(result / n, rest)
end

sum = File.read('input').lines.sum do |line|
  result, *rest = line.scan(/\d+/).map(&:to_i)
  can_be?(result, rest.reverse) ? result : 0
end

p sum # 6231007345478
