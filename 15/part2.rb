require './part1'

MINI_EXAMPLE = <<~TEXT
#######
#...#.#
#.....#
#..OO@#
#..O..#
#.....#
#######

<vv<<^^<<^^
TEXT

WIDE = { '#' => '##', '.' => '..', 'O' => '[]', '@' => '@.' }

def main(input)
  printf "\033[2J"
  @floor = []
  moves = ''
  start_pos = nil
  input.lines.map(&:chomp).each do |line|
    case line
    when /^#/
      start_pos = Complex(line.index('@') * 2, @floor.length) if line.index('@')
      @floor << line.chars.map { |char| WIDE[char] }.join
    when /./
      moves << line
    end
  end
  make_moves(start_pos, moves)
  score('[')
end

def push(pos, dir)
  return unless pushable?(pos, dir)

  next_pos = pos + dir
  case get(next_pos)
  when '.'
    move(pos, next_pos)
  when '[', ']'
    if dir.imag == 0
      push(next_pos, dir)
    else
      left_pos = left_pos(next_pos)
      push(left_pos, dir)
      push(left_pos + 1, dir)
    end
    move(pos, next_pos)
  end
end

def pushable?(pos, dir)
  next_pos = pos + dir
  case get(next_pos)
  when '.'
    true
  when '[', ']'
    if dir.imag == 0
      pushable?(next_pos, dir)
    else
      left_pos = left_pos(next_pos)
      pushable?(left_pos, dir) && pushable?(left_pos + 1, dir)
    end
  end
end

def left_pos(next_pos)
  next_pos - (get(next_pos) == '[' ? 0 : 1)
end

p main(MINI_EXAMPLE)
p main(PUZZLE_INPUT) # 1519991
