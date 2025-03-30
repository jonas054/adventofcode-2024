import 'dart:math';
import 'dart:io';

const EXAMPLE = """
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
""";

class Point {
  int x, y;

  Point(this.x, this.y);

  operator +(Point other) => new Point(x + other.x, y + other.y);

  int manhattan_distance(Point other) => (other.x - x).abs() + (other.y - y).abs();

  @override
  bool operator ==(Object other) =>
      other is Point && other.runtimeType == runtimeType && other.x == x && other.y == y;

  @override
  int get hashCode => x.hashCode + 987 * y.hashCode;
}

class Cheat {
  Point from, to;
  Cheat(this.from, this.to);
}

final DIRECTIONS = [new Point(1, 0), new Point(0, -1), new Point(-1, 0), new Point(0, 1)];

run(heading, input, max_cheat_length, threshold) {
  print(heading);
  final (nodes, start_point, end_point) = parse(input);
  final graph = build_graph(nodes);
  print("    Nodes: ${graph.length}");
  final forwards = dijkstra(graph, start_point);
  final backwards = dijkstra(graph, end_point);
  print("    Original shortest distance: ${forwards[end_point]}");
  final cheats = find_cheats(nodes, max_cheat_length);
  final distances = cheats.map((cheat) => shortest(forwards, backwards, cheat.from, cheat.to) +
                                          cheat.from.manhattan_distance(cheat.to));
  final savings = distances.map((int distance) => forwards[end_point]! - distance);
  final total = savings.where((s) => s >= threshold);
  print("    ${(total.length / 2).round()} cheats save at least ${threshold} picoseconds");
}

int shortest(forwards, backwards, from, to) =>
  min(forwards[from] + backwards[to], forwards[to] + backwards[from]);

parse(input) {
  var nodes = <Point> {};
  var start_point = null, end_point = null;
  input.split("\n").asMap().forEach((y, line) {
      line.runes.toList().asMap().forEach((x, char) {
          switch (char) {
          case 46:
            nodes.add(new Point(x, y));
            break;
          case 83:
            start_point = new Point(x, y);
            break;
          case 69:
            end_point = new Point(x, y);
            break;
          }
      });
  });
  nodes.add(start_point);
  nodes.add(end_point);
  return (nodes, start_point, end_point);
}

build_graph(nodes) {
  var graph = <Point, Map<Point, int>> {};
  nodes.forEach((node) {
      graph[node] = {};
      DIRECTIONS.where((dir) => nodes.contains(node + dir)).forEach((dir) {
          graph[node]![node + dir] = 1;
      });
  });
  return graph;
}

Set<Cheat> find_cheats(nodes, max_cheat_length) {
  final cheats = <Cheat> {};
  final xs = nodes.map((node) => node.x);
  final ys = nodes.map((node) => node.y);
  final min_x = xs.reduce((acc, x) => min(acc, x));
  final min_y = xs.reduce((acc, y) => min(acc, y));
  final max_x = xs.reduce((acc, x) => max(acc, x));
  final max_y = xs.reduce((acc, y) => max(acc, y));

  for (var y = min_y; y <= max_y; ++y) {
    for (var x = min_x; x <= max_x; ++x) {
      final one = new Point(x, y);
      if (!nodes.contains(one)) {
        continue;
      }
      for (var dy = -max_cheat_length; dy <= max_cheat_length; ++dy) {
        for (var dx = -max_cheat_length; dx <= max_cheat_length; ++dx) {
          final other = new Point(x + dx, y + dy);
          if (nodes.contains(other)) {
            final md = one.manhattan_distance(other);
            if (md >= 2 && md <= max_cheat_length) {
              cheats.add(new Cheat(one, other));
            }
          }
        }
      }
    }
  }
  print("    Found ${cheats.length} cheats");
  return cheats;
}

dijkstra(graph, start) {
  const infinity = 1000000000;
  final distances = <Point, int> {};
  final visited = <Point> {};
  final nodes = graph.keys.toSet();

  nodes.forEach((node) { distances[node] = infinity; });
  distances[start] = 0;

  while (!nodes.isEmpty) {
    final unvisited = nodes.difference(visited);
    final min_distance = unvisited.map((node) => distances[node])
                                  .reduce((acc, node) => min(acc, node));
    if (min_distance == infinity) {
      break;
    }
    final min_node = unvisited.firstWhere((node) => distances[node] == min_distance);
    graph[min_node]?.forEach((neighbor, int value) {
        distances[neighbor] = min(distances[min_node]! + value, distances[neighbor]!);
    });
    visited.add(min_node);
    nodes.remove(min_node);
  }
  return distances;
}

main() {
  print('Part 1');
  run('  Example', EXAMPLE, 2, 2); // 44 cheats save at least 2 picoseconds
  run('  Puzzle input', File('input.txt').readAsStringSync(), 2, 100); // 1524 cheats save at least 100 picoseconds
  print('Part 2');
  run('  Example', EXAMPLE, 20, 74); // 7 cheats save at least 74 picoseconds
  run('  Puzzle input', File('input.txt').readAsStringSync(), 20, 100); // 1033746 cheats save at least 100 picoseconds
}
