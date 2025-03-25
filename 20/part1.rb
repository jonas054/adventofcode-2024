require 'json'

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
  nodes = []
  walls = []
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
  original_graph = build_graph(nodes).freeze
  normal = dijkstra(original_graph, start_point)[end_point]
  puts "  Original shortest distance: #{normal}"
  cheats = find_cheats(nodes, walls)
  puts "  Found #{cheats.size} cheats"
  distances = cheats.each_with_index.map do |(from, tos), ix|
    puts 100 * ix / cheats.size
    tos.map do |to|
      graph = deep_copy(original_graph)
      graph[from][to] = 2
      graph[to][from] = 2
      normal - dijkstra(graph, start_point)[end_point]
    end
  end
  gains = distances.flatten.group_by(&:to_i).map { |key, values| [key, values.length / 2] }
  total = gains.select { _1.first >= threshold }.sum { _2 }
  puts "#{total} cheats save at least #{threshold} picoseconds"
end

def deep_copy(object)
  Marshal.load(Marshal.dump(object))
end

def find_cheats(nodes, walls)
  graph = {}
  nodes.each do |node|
    DIRECTIONS.each do |dir|
      if walls.include?(node + dir) && nodes.include?(node + (2 * dir))
        graph[node] ||= []
        graph[node] << (node + (2 * dir))
      end
    end
  end
  graph
end

def build_graph(roads)
  graph = {}
  roads.each do |node|
    graph[node] = {}
    DIRECTIONS.each { graph[node][node + _1] = 1 if roads.member?(node + _1) }
  end
  graph
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

main('Example', EXAMPLE, 0)
main('Puzzle input', File.read('input.txt'), 100)
