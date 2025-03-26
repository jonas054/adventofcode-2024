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

class Complex
  alias x real
  alias y imag
end

def Point(*args) = Complex(*args)

def main(heading, input, threshold)
  puts heading
  nodes, walls, start_point, end_point = parse(input)
  graph = build_graph(nodes)
  forwards, backwards = Parallel.map([start_point, end_point]) { dijkstra(graph, _1) }
  puts "  Original shortest distance: #{forwards[end_point]}"
  total = find_cheats(nodes, walls)
          .map { [forwards[_1] + backwards[_2], forwards[_2] + backwards[_1]].min }
          .map { forwards[end_point] - _1 - 2 }
          .flatten
          .group_by(&:to_i)
          .map { [_1, _2.length / 2] }
          .select { _1.first >= threshold }
          .sum { _2 }
  puts "  #{total} cheats save at least #{threshold} picoseconds"
end

def parse(input)
  nodes = Set.new
  walls = Set.new
  start_point = end_point = nil
  input.lines.map(&:chomp).each_with_index do |line, y|
    line.chars.each_with_index do |char, x|
      case char
      when '.' then nodes << Point(x, y)
      when '#' then walls << Point(x, y)
      when 'S' then start_point = Point(x, y)
      when 'E' then end_point = Point(x, y)
      end
    end
  end
  nodes << start_point << end_point
  [nodes, walls, start_point, end_point]
end

def build_graph(nodes)
  nodes.to_h do |node|
    [node, DIRECTIONS.map { node + _1 }.select { nodes.member?(_1) }.to_h { [_1, 1] }]
  end
end

def find_cheats(nodes, walls)
  nodes.map do |node|
    DIRECTIONS.select { walls.member?(node + _1) && nodes.member?(node + (2 * _1)) }
              .map { [node, node + (2 * _1)] }
  end.flatten(1)
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

main('Example', EXAMPLE, 2) # 44
main('Puzzle input', File.read('input.txt'), 100) # 1524
