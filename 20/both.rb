require 'set'
require 'parallel'

EXAMPLE = <<~TEXT
  ###############
  #...#...#.....#
  #.#.#.#.#.###.#
  #S#...#.#.#...#
  #######.#.#.###
  #######.#.#...#
  #######.#.###.#
  ###..E#...#...#
  ###.#######.###
  #...###...#...#
  #.#####.#.###.#
  #.#...#.#.#...#
  #.#.#.#.#.#.###
  #...#...#...###
  ###############
TEXT

DIRECTIONS = [1, 0 - 1i, -1, 0 + 1i].freeze

class Complex # :nodoc:
  alias x real
  alias y imag
  def manhattan_distance(other)
    (x - other.x).abs + (y - other.y).abs
  end
end

def Point(*args) = Complex(*args)

def main(heading, input, max_cheat_length, threshold)
  puts heading
  nodes, start_point, end_point = parse(input)
  graph = build_graph(nodes)
  puts "    Nodes: #{graph.size}"
  forwards, backwards = Parallel.map([start_point, end_point]) { dijkstra(graph, _1) }
  puts "    Original shortest distance: #{forwards[end_point]}"
  total = find_cheats(nodes, max_cheat_length)
          .map { |from, to| shortest(forwards, backwards, from, to) + from.manhattan_distance(to) }
          .map { |distance| forwards[end_point] - distance }
          .count { |saving, _| saving >= threshold }
  puts "    #{total / 2} cheats save at least #{threshold} picoseconds"
end

def shortest(forwards, backwards, from, to)
  [forwards[from] + backwards[to], forwards[to] + backwards[from]].min
end

def parse(input)
  nodes = Set.new
  start_point = end_point = nil
  input.lines.map(&:chomp).each_with_index do |line, y|
    line.chars.each_with_index do |char, x|
      case char
      when '.' then nodes << Point(x, y)
      when 'S' then start_point = Point(x, y)
      when 'E' then end_point = Point(x, y)
      end
    end
  end
  nodes << start_point << end_point
  [nodes, start_point, end_point]
end

def build_graph(nodes)
  nodes.to_h do |node|
    [node, DIRECTIONS.map { node + _1 }.select { nodes.member?(_1) }.to_h { [_1, 1] }]
  end
end

def find_cheats(nodes, max_cheat_length)
  cheats = Set.new
  xs = nodes.map(&:x)
  ys = nodes.map(&:y)
  (ys.min..ys.max).each do |y|
    (xs.min..xs.max).each do |x|
      one = Point(x, y)
      next unless nodes.member?(one)

      (-max_cheat_length..max_cheat_length).each do |dy|
        (-max_cheat_length..max_cheat_length).each do |dx|
          other = Point(x + dx, y + dy)
          next unless nodes.member?(other)

          cheats << [one, other] if (2..max_cheat_length).cover?(one.manhattan_distance(other))
        end
      end
    end
  end
  puts "    Found #{cheats.size} cheats"
  cheats
end

def dijkstra(graph, start)
  distances = {}
  visited = {}
  nodes = graph.keys

  nodes.each { |node| distances[node] = Float::INFINITY }
  distances[start] = 0

  until nodes.empty?
    min_node = nodes.min_by { visited[_1] ? Float::INFINITY : distances[_1] }
    break if distances[min_node] == Float::INFINITY

    graph[min_node].each do |neighbor, value|
      distances[neighbor] = [distances[min_node] + value, distances[neighbor]].min
    end

    visited[min_node] = true
    nodes.delete(min_node)
  end

  distances
end

puts 'Part 1'
main('  Example', EXAMPLE, 2, 2) # 44 cheats save at least 2 picoseconds
main('  Puzzle input', File.read('input.txt'), 2, 100) # 1524 cheats save at least 100 picoseconds
puts 'Part 2'
main('  Example', EXAMPLE, 20, 74) # 7 cheats save at least 74 picoseconds
main('  Puzzle input', File.read('input.txt'), 20, 100) # 1033746 cheats save at least 100 picoseconds
