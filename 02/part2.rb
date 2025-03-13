# frozen_string_literal: true

def main
  IO.readlines('input').count do |line|
    numbers = line.scan(/[0-9]+/).map(&:to_i)
    (0...numbers.length).find do |skip_ix|
      is_safe(numbers[0...skip_ix] + numbers[(skip_ix + 1)..])
    end
  end
end

def is_safe(numbers)
  is_increasing = numbers[0] < numbers[1]
  not numbers.each_cons(2).find do |previous, value|
    is_increasing && value < previous || !is_increasing && value > previous ||
      (value - previous).abs > 3 || value == previous
  end
end

puts main
