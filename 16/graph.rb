# frozen_string_literal: true

# ruby 2.3.1 recomended
class Graph
  attr_reader :graph, :nodes, :previous, :distance # getter methods

  INFINITY = 1 << 64

  def initialize
    @graph = {} # the graph // {node => { edge1 => weight, edge2 => weight}, node2 => ...
    @nodes = []
  end

  # connect each node with target and weight
  def connect_graph(source, target, weight)
    if graph.key?(source)
      graph[source][target] = weight
    else
      graph[source] = { target => weight }
    end
    return if nodes.include?(source)

    nodes << source
  end

  # connect each node bidirectional
  def add_edge(source, target, weight)
    connect_graph(source, target, weight) # directional graph
    connect_graph(target, source, weight) # non directed graph (inserts the other edge too)
  end

  # based of wikipedia's pseudocode: http://en.wikipedia.org/wiki/Dijkstra's_algorithm

  def dijkstra(source)
    @distance = {}
    @previous = {}
    nodes.each do |node| # initialization
      @distance[node] = INFINITY # Unknown distance from source to vertex
      @previous[node] = -1 # Previous node in optimal path from source
    end

    @distance[source] = 0 # Distance from source to source

    unvisited_node = nodes.compact # All nodes initially in Q (unvisited nodes)

    while unvisited_node.size.positive?
      u = nil

      unvisited_node.each do |min|
        u = min if !u || (@distance[min] && (@distance[min] < @distance[u]))
      end

      break if @distance[u] == INFINITY

      unvisited_node -= [u]

      graph[u].each_key do |vertex|
        alt = @distance[u] + graph[u][vertex]

        next unless alt <= @distance[vertex]

        p "#{u} and #{vertex} are both #{alt} points" if alt == @distance[vertex]
        @distance[vertex] = alt
        @previous[vertex] = u # A shorter path to v has been found
      end
    end
  end

  # To find the full shortest route to a node
  def find_path(dest)
    find_path @previous[dest] if @previous[dest] != -1
    @path << dest
  end

  # Gets all shortests paths using dijkstra
  def shortest_paths(source)
    @graph_paths = Hash.new([])
    @source = source
    dijkstra source
    nodes.each do |dest|
      @path = []

      find_path dest

      actual_distance = if @distance[dest] == INFINITY
                          'no path'
                        else
                          @distance[dest]
                        end
      @graph_paths[dest] += [{ path: @path, distance: actual_distance }]
    end
    @graph_paths
  end

  def print_result
    @graph_paths.each do |graph|
      puts graph
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  # sample input as per http://en.wikipedia.org/wiki/Dijkstra's_algorithm
  gr = Graph.new
  gr.add_edge('a', 'c', 7)
  gr.add_edge('a', 'e', 14)
  gr.add_edge('a', 'f', 9)
  gr.add_edge('c', 'd', 15)
  gr.add_edge('c', 'f', 10)
  gr.add_edge('d', 'f', 11)
  gr.add_edge('d', 'b', 6)
  gr.add_edge('f', 'e', 2)
  gr.add_edge('e', 'b', 9)
  gr.shortest_paths('a')
  gr.print_result

end
