# frozen_string_literal: true

def are_equal?(result, numbers)
  a, b, *rest = numbers
  return result == a if numbers.length == 1

  are_equal?(result, [a + b] + rest) ||
    are_equal?(result, [a * b] + rest) ||
    are_equal?(result, ["#{a}#{b}".to_i] + rest)
end

sum = File.read('input').lines.sum do |line|
  result, *rest = line.scan(/\d+/).map(&:to_i)
  are_equal?(result, rest) ? result : 0
end

puts sum # 333027885676693
__END__
190: 10 19
3267: 81 40 27
83: 17 5
156: 15 6
7290: 6 8 6 15
161011: 16 10 13
192: 17 8 14
21037: 9 7 18 13
292: 11 6 16 20
