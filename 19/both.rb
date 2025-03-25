EXAMPLE = <<~TEXT
  r, wr, b, g, bwu, rb, gb, br

  brwrr
  bggr
  gbbr
  rrbgbr
  ubwu
  bwurrg
  brgr
  bbrgwb
TEXT

def main(heading, input)
  lines = input.lines.map(&:chomp)
  @patterns = lines[0].split(/, */)
  @cache = {}
  solutions = lines[2..].map { search(_1) }
  puts heading
  puts "  Part 1: #{solutions.count(&:nonzero?)}" # (6) 315
  puts "  Part 2: #{solutions.sum}" # (16) 625108891232249
end

def search(design)
  @cache[design] ||= if design.empty?
                       1
                     else
                       @patterns.select { design.start_with?(_1) }
                                .sum { search(design[_1.length..]) }
                     end
end

main('Example', EXAMPLE)
main('Puzzle input', File.read('input.txt'))
