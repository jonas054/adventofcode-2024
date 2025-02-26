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

def push(pos, dir, mode)
  next_pos = pos + dir
  case get(next_pos)
  when '#'
    false
  when '.'
    move(pos, next_pos) if mode == :move
    true
  when '[', ']'
    if dir.imag == 0
      pushable = push(next_pos, dir, mode)
    else
      left_pos = next_pos - (get(next_pos) == '[' ? 0 : 1)
      pushable = push(left_pos, dir, :check) && push(left_pos + 1, dir, :check)

      if mode == :move && pushable
        push(left_pos, dir, :move)
        push(left_pos + 1, dir, :move)
      end
    end
    move(pos, next_pos) if mode == :move && pushable
    pushable
  end
end

p main(MINI_EXAMPLE)
p main(PUZZLE_INPUT) # 1519991
