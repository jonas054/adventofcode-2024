# frozen_string_literal: true

require './part1'

def run(input, board, max, bytes, count)
  first_blocker = (count...input.length).bsearch do |c|
    !!find_shortest_path(Set.new(board - bytes.first(c)), max).infinite? # rubocop:disable Style/DoubleNegation
  end
  input.lines[first_blocker - 1]
end

puts 'Part 2'
puts main(EXAMPLE, 6, 12) # 6,1
puts main(PUZZLE_INPUT, 70, 1024) # 60,21
