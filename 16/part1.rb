# frozen_string_literal: true

require 'rainbow'
require './graph'

EXAMPLE_1 = <<~TEXT
  ###############
  #.......#....E#
  #.#.###.#.###.#
  #.....#.#...#.#
  #.###.#####.#.#
  #.#.#.......#.#
  #.#.#####.###.#
  #...........#.#
  ###.#.#####.#.#
  #...#.....#.#.#
  #.#.#.###.#.#.#
  #.....#...#.#.#
  #.###.#.#.#.#.#
  #S..#.....#...#
  ###############
TEXT

EXAMPLE_2 = <<~TEXT
  #################
  #...#...#...#..E#
  #.#.#.#.#.#.#.#.#
  #.#.#.#...#...#.#
  #.#.#.#.###.#.#.#
  #...#.#.#.....#.#
  #.#.#.#.#.#####.#
  #.#...#.#.#.....#
  #.#.#####.#.###.#
  #.#.#.......#...#
  #.#.###.#####.###
  #.#.#...#.....#.#
  #.#.#.#####.###.#
  #.#.#.........#.#
  #.#.#.#########.#
  #S#.............#
  #################
TEXT

PUZZLE_INPUT = <<~TEXT
  #############################################################################################################################################
  #...#.#.....#.......#.......#...#.........#...#...........#.....#.#.......#.......#.....#...#.......#...#.#...............#...#.....#...#..E#
  #.#.#.#.#.#.#.#.###.#.#.#####.#.#.#.#####.#.#.#.###.#####.###.#.#.#.#.#.#.#.###.#.#.###.#.###.#####.#.#.#.#.#.#.#########.#.#.#.###.#.###.#.#
  #.#...#...#...#...#.#.#.......#...#.....#...#.#.#.#.#.........#...#.#...#.......#.#...#.#.#...#.....#.#...#...#.#.#.....#.................#.#
  #.#.#.###.#######.###.#################.#.#####.#.#.#.###########.#.###.#.#######.###.#.#.#.#.#.#.###.#.#####.#.#.#.#.#######.#.#.#####.###.#
  #.#.#...#...#...#.....#...............#.#.#...#...#.#.#.........#.#.#...#.......#...#.#.#.#.#.......#.#.#.....#.#.#...................#.#...#
  #.#.#.###.#.#.#.#######.#######.###.#.#.###.#.###.#.###.#######.###.#.#.###.###.###.#.#.#.#.#####.#.#.###.###.#.#.#.#######.#####.#.#.#.#.#.#
  #.#...#.....#.#.........#.....#...#.#.#...#.#.....#.....#.....#.....#.......#...#.#...#.#.#...#.....#.............#.#.#...#.....#.#.#.......#
  #.#.###.#####.#####.###.#.###.#####.#.###.#.#################.#.#######.#####.###.#####.#.###.###.#.#.#.###.#.#.#.#.#.#.#.#####.#.#.#.#.#.###
  #.#.....#.........#.....#.#.#.......#...#...#.......................#.....#...#.......#.#...#.....#.#.......#.#.#.....#.#...#...#...#.#.#...#
  #.#.#########.###.#.###.#.#.###########.#####.###.#################.###.#.#.###.#######.###.#####.#.###.#####.#.#######.###.#.#######.#####.#
  #.#.#...#...#...#...#...#.#...#.......#...#...#.....#...#.........#...#.#.#.#...#.............#...#...#.....................#.......#.......#
  #.#.#.#.#.#.#########.#.#.#.#.#.###.#####.###.#.###.#.#.#.#######.###.#.#.#.#.#.#.#############.#.###.#.#.###.#.#.#########.#.###.#.#######.#
  #.#.#.....#...#.......#...#.#...#...#.....#...#.#.....#...#...#.....#.....#.#.#.#.#.....#.......#...#.#.............#...#...#.#.#.#.#.....#.#
  #.#.#.#######.#.#####.#.#####.###.#.#.#####.###.#.#########.#.#.#######.###.#.#.#.###.#.#.#######.###.#.#.#######.#.#.###.###.#.#.#.###.#.#.#
  #...#.......#...#.....#.....#...#.#.#.....#...#.#.#...#...#.#.#.........#...#.#.#.#...#.#.....#.#...#.#.#.........#...#...#.................#
  #.#########.#####.#.#.#.###.#####.#######.###.#.###.#.#.#.#.#.#.#########.###.###.#.###.#####.#.#.#.#.#.#########.###.#.###.###.#.#######.###
  #.#...#.....#...#.#.#...#.#.#...#.......#...........#...#...#.#...#.....#.#.....#.#.#.....#...#.#.#.......#.....#.......#...#.............#.#
  #.#.#.#.#####.###.#.#####.#.#.#.#######.#######.#.###########.###.#.###.#.#####.#.#.#.#####.###.#.#######.###.#########.#.###.#####.#.###.#.#
  #...#...#...#.....#.#.....#...#.......#.....#...#...........#...#...#.#.#.....#...#.#.#.....#...#.#.....#.#.............#.....#...#.#...#...#
  #.#######.#.#.#####.#.#.#####.#.#####.#####.#.###.#########.###.#####.#.#####.#.###.#.#.#####.###.#.###.#.#.#.#.#############.#.#.#.#.#.#.#.#
  #.#.......#.#.....#.#.#.#.....#...#.#.......#...#.#.......#...#.#.....#...#.#.#...#.#.#...#...#.......#.#...#.#.......#...#...#.#...#.#...#.#
  ###.#######.#######.#.#.#.#####.#.#.#######.###.#.#.#.###.###.#.#.###.###.#.#.###.#.#####.#.###.###.#.#.#############.###.#.###.###.#.###.#.#
  #...#.....#.....#...#.#.#.....#.#.#...#...#...#.#.#.#...#.#...#...#.#...#.....#.....#.....#...#.....#.#.#...#...#.....#...#.#...#...#...#...#
  #.#####.#######.#.#.#.#######.#.#.#.#.#.#.#.###.#.###.#.###.#.#.###.#.###.###.#######.#####.#.###.#.#.#.#.#.#.#.#.#####.###.#.###.#####.###.#
  #.#...#.....#...#...#.......#.#.#.#.#.#.#...#...#...#.#...#.#...#...#.....#...........#.....#.#...#.#.#...#...#.#...#...#...#...#.......#...#
  #.#.#.###.###.###.#.#.#####.#.#.#.#.#.#.#####.#.###.#.###.#.#.###.#.#######.###.#############.#.#####.#########.#.#.#.#.#.#####.#####.###.###
  #.#.#...#...#...#.#.#.#...#...#.#.#.#.#...........#.#...#...#...#.#...#...#...#...#.....#...#.#...#...#.#.....#.#.#.#.#...#...#...#...#...#.#
  #.#.###.#.#.###.#.#.###.#.#.#.#.#.###.###.###.#####.###.#######.#.#####.#.###.###.#.###.#.#.#.###.#.###.#.#.#.#.###.#.#######.###.#####.###.#
  #.#.#...#.#...#.#.#...#.#.#.....#...#.....#...#.....#.#...#...#.#.#.....#.....#...#.#.#...#...#...#.#.....#.#.#...#...#.....#...#.......#...#
  #.#.#.#####.#.#.#####.#.#.#.#######.#######.###.###.#.###.###.#.#.#.#.#########.#.#.#.#######.#.###.###.###.#####.#.#.#.###.###.#########.#.#
  #...#.#.....#.#.....#...#.#.#.....#.......#.#...#.......#...#.....#.#.#.........#...#.......#.#...#...#...#.......#.#...#.......#...#.....#.#
  #.###.###.#.###.###.#.#.#.#.#.#.#.#######.#.#.#######.#.###.#######.#.#.#########.#.#.#####.#.###.###.###.###.#####.#.#########.#.#.#####.#.#
  #...#.#...#.#.......#.#.#.#.#.#.#.......#.#.#...#...#.#.#...........#.#.....#...#.#.#.#...#.....#...#.......#.......#.#...#.#...#.#.#.....#.#
  #####.#.#####.#######.#.#.#.###.#########.#.#.#.#.#.#.#.#.###########.#.#.#.#.#.#.#.###.#.#########.###.###.#.###.#.#.#.#.#.#.###.#.#.#####.#
  #...#.#.....#.....#.....#.#...#.........#.......#.#...#.#.#...#.....#.....#.#.#...#.#...#.#.......#...#...#.#...#.#.#.#.#.#.....#.#...#...#.#
  #.#.#.#.###.#####.#######.###.#.#.#####.#####.###.###.###.#.#.###.#####.###.#.#####.#.###.#.#####.###.###.#.###.#.#.###.#.#####.#.#####.###.#
  #.#...#...#...#...#.......#.#.#...#...#.....#...#...#.#...#.#.#...#.........#.....#.....#.......#...#.#...#.#...#.#.....#...#...#...#.#.....#
  #.#########.#.#.###.#####.#.#.###.###.###.#.###.###.###.###.#.#.###.#####.#########.###.###########.#.#.#.#.#.###.#########.#.#####.#.#.#####
  #.............#...#.....#...#...#...#...#.....#.........#...#.#.....#.........#...#.......#.......#.#.#...#.#...#...#.......#...............#
  #.#.###.#########.###.#.###.###.###.###.#.###.###.#####.#.###.#.#######.#.###.#.#.#########.#####.#.#.#####.###.#####.#.#############.###.#.#
  #.#...#.........#...#.#...#...#.#.......#...#...#.........#.#.#...#.....#.....#.#...........#.#...#.#.....#.#...#.......#.......#.....#.#...#
  #####.#.#######.###.#.###.#####.###.###.###.###############.#.###.###.###.#####.#############.#.###.#####.#.#.###.###.###.#####.###.#.#.###.#
  #.....#...#...#...#.#...#.....#.......#.#...#.........#.....#.......#...#.....................#.#.....#.#...#.#...#...#...#...#.#...#.....#.#
  #.#######.#.#.###.#.###.#####.#######.###.###.###.###.#####.#.#####.###.#############.#####.###.#.#.#.#.#####.#.#.#.###.###.#.#.#.#######.#.#
  #.#...#...#.#...#...#...#.#...#.....#.#...#...#...#...#.....#.....#.....#...#.........#...#.#...#.#.#...#.#...#.#.#...#.....#.#.#.....#...#.#
  #.#.###.###.###.#####.###.#.#.#.#####.#.###.###.###.#.#.###.#####.#####.#.###.#.#####.#.#.#.#.###.#.###.#.#.###.#.#########.###.#.###.#.###.#
  #.#...#...#...#.....#.....#.#...#.............#.#...#...#...#.#...#...#...#...#.#...#...#...#.#.#.#...#...#...#.#...........#...#...#.......#
  #.#.#.###.###.#.#######.###.###.#.#########.#.#.#.#.#.###.#.#.#.###.#####.#.###.#.#.#########.#.#.###.#######.#.#############.#####.###.#####
  #.#.#...#...#.#.........#...#...#.#.......#...#...#.#...#.#.#.#.#.....#...#...#...#.#.......#.#.....#...#...#.#.........#.....#.....#.......#
  #.#.#.#####.#.#######.###.#######.#.#####.###.###.#.###.#.#.#.#.#####.#.#####.#####.#.#####.#.#.###.###.#.#.#.###########.#####.#####.#.###.#
  #.#.............#...#.#...........#.#.....#...#...#...#.#...#.#.....#.#.#...#...#.#...#...#...#...#.#.#.#.#.#.#.......#...#...#.#.........#.#
  #.###.#.#####.###.#.###.###.#######.#.#######.#.#####.#.#.###.#####.#.#.#.#####.#.###.###.#######.#.#.#.#.#.#.#.#####.#.###.#.#.#.###.#.#.#.#
  #...#...#...#.#...#...#.#...#.......#...#...#.#.....#.#.#.........#.......#.....#.#...........#...#...#...#...#...#.#...#...#.#.#...#...#.#.#
  #.#.#.###.#.###.###.#.#.#.###.#########.#.#.###.###.#.#.###########.#####.#.###.#.#.#.#######.#.#####.###########.#.#######.#.#.#######.#.#.#
  #.#.............#.....#.#.....#.......#...#...#.#...#...#...#.....#.....#.#.#...#...#.....#...#.#.....#...#...............#.#.#.......#.#...#
  #.#.#.#.###.#.###.#####.#.#.###.#####.#######.###.#.#####.#.#.###.#####.###.###.#.#######.#.###.#.#####.#.#.###########.#.###.#######.#.###.#
  #.#.#...#...#.#.#.#.......#.#...#.......#...#.....#.#...#.#...#.#.#...#.#...#...#.......#.#.....#.......#.#...#.......#.#.....#.....#.......#
  #.#.#.###.###.#.#.#####.###.#.###.#.###.#.#######.###.#.#.#####.#.#.#.#.#.###.###.#####.#.#############.#.#.#.#.#.###.#.#.#####.#.#####.#.#.#
  #.#...#.......#.#.#...#.....#.#...#...#.#.........#...#...#.....#...#...#.#.......#...#.#...#...........#.#.#.#.#.#...#.#.#.................#
  #.###.#########.#.#.#.#####.#.#.###.###.#.#########.###########.#.#####.#.#.#######.#.#.###.#.#######.###.###.#.#.#.###.###.#######.#.#.#####
  #.......#.......#...#.....#.#.#.#...#...#...#...#...#...........#.....#.#.#.#.......#...#.#...#.....#...#.....#.#.#...#...#.................#
  #.#.#.#.###.#.#######.###.###.#.#.###.#####.#.###.###.#########.#.#####.#.#.#.#.#######.#.#####.#.#.###.#########.#.#.###.#.###.#.#########.#
  #.#...#.....#.......#...#.....#.#.....#.......#...#...#...........#.....#.#.#.#.#.......#.........#...#...........#.#.....#.#...#.......#...#
  #.###.###.#.#####.#.#.#.#######.#######.#######.###.###.###########.#####.#.###.#####.###.#########.###########.###.#####.#.#.#######.#.#.###
  #...#.#...#.#...#.#.#.#.......#...#.....#.....#.#...#...........#.......#.#...#.#...#.....#.......#.#...........#.......#.#.#...#...#.#.#.#.#
  ###.#.#.###.#.###.#.#####.#######.#######.###.#.#.#.#########.###.#######.###.#.#.#.#####.#.#####.#.#.###############.###.#.###.###.#.###.#.#
  #.#...............#.#...#.......#.......#...#...#.#...#.....#.....#.#...#...#...#.#...#.#.#...#.#.#.#.#.....#.......#.#...#...#...#.#...#...#
  #.#.#.###.#.###.###.#.#.#.###.#.#######.###.###.#.###.#.###.#.#####.#.#.###.#####.###.#.#.###.#.#.###.#.#.#.#####.#.#.#.###.#.#.#.#.###.###.#
  #.....#...#.#...#.....#.#.#...#.......#.#...#.....#...#...#.....#...#.#...#.#.....#...#...#...#.#.#...#.........#.#...#...#.#...#...#.#.....#
  #######.#####.#########.###.#########.#.#.###.#####.###.#.#####.#.###.###.#.#.#####.###.###.###.#.#.#####.#####.#.###.###.#.###.###.#.#######
  #.....#.#.....#.....#.#.....#.....#...#...#...#.....#...#.....#...#...#...#.......#.#.....#.#.....#.#.....#...#.#...#...#...#.#.#...#...#...#
  #.#.#.#.#.#####.###.#.###.#.#.###.#########.###.###.#.###.###.###.#.#######.###.###.#.#####.#.#####.#.#####.#.#.###.###.#####.#.#.#####.#.#.#
  #...#...#.#...#.#.#.#.....#.#.#.#...#.....#...#.#...#...#.#...#...#.#.........#.#...#.#.....#...#...#.#...#.#.......#...#.....#.#.#...#...#.#
  ###.#.#.#.#.#.#.#.#.###.###.#.#.###.#.#.###.###.#.###.###.#.###.###.#.#.#.#.#.###.#####.#######.###.#.#.#.#.#.#########.#.#####.#.#.#.#####.#
  #...........#.....#...#.....#...#...#.#.....#.....#.......#.#...#...#.#.#.#.#.#...#.....#.......#...#...#.#.#.........#.#.....#.#.#.#.......#
  #.#.#.#.#########.###.#.#######.#.###.#######.###.#.###.###.###.#.###.#.###.#.#.#####.###.#######.###.###.#.#####.###.#.###.#.#.#.#.#.#####.#
  #.#...#.....#.....#.#.#.#.....#.#.#...#.......#...#.#.#.#.#...#.#...#...#...#...#.....#...#.....#.#.#...#.#.#.......#.#...#.#.#.#...#.......#
  #.#.#.#.#.#.###.#.#.#.###.###.#.#.#.###.###.#.#.###.#.#.#.###.#.###.#.#.#.#########.###.###.#.#.#.#.#.#.#.#.#####.#.#.#.#.###.#.#####.#.#####
  #.#.......#.....#...#.......#.#.#...#...#.....#...#...#...#.#.......#.#...#.........#...#...#.#...#...#...#...#...#.#.#.#.....#.#.....#.....#
  #.#.#.#.###.#######.#########.#.#####.#.#######.###.#####.#.#########.###########.###.#######.#####.###.#####.#.###.#.#.###.###.#.###.#.#.#.#
  #.....#.....#.....#...#.....#.....#.#.#.............#.....#.......#.......#.......#.#.#.......#...#.#.#.....#.#.#...#.#...#.#...#...#.#.#.#.#
  #.#.#.#.#####.###.#####.###.#####.#.#.#.#.###########.#####.#####.#####.#.#.#######.#.#.#######.#.#.#.#####.#.#.#####.#.###.#.#####.#.#.#.#.#
  #...#.#.....#.#.#.#.....#.....#.....#.#.#...#.......#.....#.....#.....#.#.#...#...#.#.#.#.......#.#.#.....#.#...#.....#.#...#.....#...#...#.#
  #.#.#.#.###.#.#.#.#.#########.#######.#####.#.#.#.#######.#.#.#.#####.###.#.#.#.#.#.#.#.#.#########.#.###.#.###.#.#####.#.#######.#.#.#####.#
  #...#.#.....#.#...#.#.......#.......#.....#...#...#.........#.#.....#...#.#.#...#.#.#.#.#.........#...#.#.#...#.#.#.............#.#.#...#...#
  #####.#.#####.#.###.#.#####.#######.#####.#####.###.#########.#.###.###.#.#.#####.#.#.#.#.#######.#####.#.###.#.#.###.###########.#.#.###.###
  #...#.#.#...#.#.#.......#...#.#...#...........#...#.......#...#.#...#...#.#...#...#.#...#.#.....#.......#.#.#...#...#.#...........#.#...#.#.#
  #.#.#.#.#.###.#.#########.###.#.#.#.#############.###.###.#.###.#.###.###.###.#.###.#####.#.#####.#.#.###.#.#######.###.###########.#.#.#.#.#
  #.#...#.#.#...#.#.........#.#...#...#...........#.#...#...#.#...#.........#...#.#...#...#.#...#...#.#...#.#.#.......#...#...........#.#.#.#.#
  #.###.#.#.#.###.#.#########.#.#######.#####.###.#.#.#.#.###.#######.#######.###.#.#.#.#.#.###.#.#####.#.#.#.#.#######.#.#.#####.#.#.#.#.#.#.#
  #...#.....#.#.....#.....#.............#...#.#...#...#.#.#.#.........#.......#...#.#...#.#.#...#...#...#.....#...#...#.#...#...#...#...#.#...#
  #.#.#.#.###.#######.###.#####.#####.###.#.#.#.###.#####.#.#.#######.#######.#.#########.#.#.#####.#.###########.#.#.#.#.#.#.#####.###.#.###.#
  #.#.......#.........#.#...#...#.....#...#...#.....#.....#.#.#.....#.#.....#.#.......#...#.#.#.....#.#.........#...#.#.#.#.#...#.....#.#...#.#
  #.#######.#.#########.###.#.#.#.#####.###.#######.#.#####.#.#.###.#.#.#.#.#.#######.#.###.#.#.###.#.#.#######.###.#.#.#.#.#.#.#.#####.#.###.#
  #.......#.#.......#...#.#.....#.......#...#.....#.#.#.#.....#.#...#.....#.#.#.....#.#.......#...#.#.#.#.....#...#.#.#.#...#.#.#...#...#.....#
  ###.#####.#######.#.#.#.#####.#.###########.###.###.#.#.#####.###.#######.#.#.###.#.#######.###.###.#.#.#######.###.#.#.#.#.#.#.###.#####.#.#
  #...#.....#.......#.#.....#...#.#...........#.#.#...#...#...#...#.........#.#...#.#.#...#...#...#...#.#.......#.....#.#.#.#.#...#...#...#.#.#
  #.###.#####.#.#####.#####.#.###.#.###.#######.#.#.#######.#.###.###########.###.#.#.#.#.###.#.#.#.###.#######.#.#####.#.#.#####.#.#####.#.#.#
  #...#.#.....#...#...#...#.#.#...#.....#.......#.#.#.......#.....#.#.......#...#.#.#...#...#.#.#.#...#.#.....#...#.....#.#.#...#.#.......#.#.#
  ###.#.#.###.###.#.#.#.#.###.#.#######.#####.#.#.#.#.#.#.#########.#.###.#####.###.#######.#.#.#.#.###.#.###.#####.#######.#.#.#####.#####.#.#
  #.#.#.#.#...#...#.#...#...#.....#...#.#.....#.#.....#.#.#.....#.......#...........#.....#.#...#...#...#.#.#...#...#.....#.#.#.....#.#.....#.#
  #.#.#.#.#.###.###########.#####.###.#.#.#####.#######.###.###.#.#################.###.###.###.#####.###.#.###.#.###.###.#.#.#####.#.#.#.###.#
  #...#.#.#...#...#.....#...#...#...#.#.#...#.#.......#.#.....#.#.#...#.......#...#...#...#...#.....#...#.#.......#...#...#...#...#...#.#.#...#
  #####.#.###.###.#.###.#.###.#.###.#.#.###.#.#######.#.#.#####.#.#.#.#.#####.#.#.###.###.###.#####.###.#.###.#####.#.###.#.###.#.#####.###.###
  #.....#...#...#.#...#...#...#.#.#.#.#.....#.......#.#...#.#...#...#.#.#.....#.#...........#.#...#...#.#...#.......#...#.#.#...#.....#...#.#.#
  #.#######.#.###.###.#####.###.#.#.#.###########.#.#.#.###.#.#######.#.#.#################.#.#.#.#####.###.#.#########.#.#.#.#####.#####.#.#.#
  #.......#.#.........#.....#...#.......#.......#.#.#.#.....#.....#...#.#.#.............#...#...#.....#.....#.#.....#...#.#...#.....#.....#.#.#
  #.#####.#.###########.#.#.#.#####.#####.#.###.#.#.#.#######.###.#####.#.#.###########.#.#######.###.#.#####.#.###.#.###.#####.#####.#####.#.#
  #.#...#.#.......#.....#...#.....#.#.....#...#.#.#.#...#...#...#.#.....#.#.#.......#...#...#...#.#...#...#...#.#...#...#...#.......#...#.....#
  #.#.#.#.#######.#.#############.###.#######.#.#.#.###.#.#.#####.#.#####.#.#.#.###.#.###.###.#.###.###.#.#####.#.#####.###.###########.#.###.#
  #...#.#...#.....#.....#.......#.....#.......#.......#...#.#.....#.#...#.....#...#.#...#.#...#.....#.....#.....#.#...#.#.........#.....#...#.#
  #####.###.###.#######.#.###.#.#######.###.#######.#.#####.#.#####.#.###.#######.#.###.#.#.###########.###.#####.#.#.#.#########.#.#.#.###.#.#
  #...#...#...#.#.....#.#.#...#...#.....#...#...#...#.#...#.#.#.....#.............#...#.#.#...........#.....#...#.....#.....#.....#...#.#.#...#
  #.#.###.###.###.###.#.###.#####.#.#####.#.#.#.#.#.###.#.#.#.###.###.#####.###########.#############.#########.#####.#.#.#.#.#.#.###.#.#.###.#
  #.#...#.#.#.......#.#.....#.....#.....#.#.#.#...#...#.#.#...#...#.....#.#.#.......#...#.......#.....#.............#.#...#.#.#...#...#.....#.#
  #.#####.#.#######.#.#######.#####.###.#.#.#.#######.#.#.#####.#######.#.#.#.#####.#.###.#####.#.#####.#####.#######.#.#.#.#.#.#.#.#.#####.#.#
  #.......#...#...#.#.......#.....#.#.....#.#...........#.............#...#.....#.#...#.#...#...#.....#.....#.#...#...#...#.#.#.#.#.#.......#.#
  #.#######.#.#.#.#####.#.#######.#.#.#.#.#########.#####.#.#####.###.#.#######.#.#####.#.#.#.###.###.#.###.###.#.#.#######.#.#.#.#.#.#######.#
  #.#.......#.#.#.....#.......#.....#...#.........#.#.#...#.#.........#.......#.#.....#...#.#.#.....#.#...#.....#.#.#.......#.#.....#.#...#...#
  #.#.#######.#.#####.#######.#.###.#.#########.#.#.#.#.###.#.###########.###.#.#.###.#####.#.#######.#.#########.#.#.#######.#####.#.#.###.###
  #.#.......#.#.#.#...#...#...#...#.#.....#.....#.#...#.#.....#...........#.#.#...#.......#.#...#.....#.#.......#.#...#...#...#.....#...#...#.#
  #.#########.#.#.#.###.#.#.#####.###.###.#.#.#.#####.#.#.#####.#########.#.#.###########.#.###.#.#####.#.#####.#.#####.###.###.#####.###.###.#
  #.#.........#.#.#...#.#.#.#...#...#.....#.#...#.....#.#.....#.#...........#.........#.#.#.#.#...#...#.#.....#...#...........#.#...#.....#...#
  #.#.#######.#.#.###.#.#.#.#.#.###.###.#.#.#####.#####.#.###.#.#.#########.#########.#.#.#.#.#####.###.#####.###.#.###.#####.#.#.#.#.#####.#.#
  #...#...#...#.#.......#.#.#.#.....#...#.#.....#...#...#.#.#.#.#.........#...#.......#...#.#.#.........#...#...#...#...#...#...#.#...#.....#.#
  #####.#.#.###.#.#######.#.#.#######.###.#####.#.#.#.###.#.#.#.#####.#######.#.#######.###.#.#.#########.#.###.###.#.###.#.#.#.#.###.#.#####.#
  #.#...#.#.#...#.#...#.#...#.#...#.....#.....#.#.#.......................#...#.#...#...#...#...#.........#...#.....#.#...#.#...#...#...#...#.#
  #.#.###.#.#.#####.#.#.###.#.#.#.#####.###.#.#.#.#.#.#.###.#####.#.###.#.#.###.#.###.###.#####.#.###.#######.#.###.#.#.###.#######.#.###.###.#
  #.#...#...#.#.....#.#...#.#...#...#...#.#.....................#.....#.#.#...#.#.#...#...#...#...#...#...#...#.......#.#.#.........#...#.#...#
  #.###.#.###.#.#####.#.###.#######.#.###.#.###.###.#.###.#.###.#######.#.###.#.#.#.###.###.#.#####.###.#.#.#######.#.#.#.#######.###.#.#.#.###
  #...#...#...#.#.#...#...#.......#.#.....#.......#.#...#...#...................#.....#...#.#.............................#.........#...#.#...#
  ###.#.#.#.###.#.#.#####.#######.#.#########.###.#.###.#####.###.###.#####.#.#.###.#.###.#.#########.#.#####.#####.#.###.###.#####.#.###.###.#
  #...#.#.#.....#.#.....#.....#...#.....#...#.#...#.#.......#...#.#...#...#.#.#.....#.....#.#.....#.....................#...#.#...#...#.....#.#
  #.###.#.#######.#####.#####.#.#######.#.#.#.#####.#######.###.#.###.#.#.#.#.#####.#######.#.###.#.#.###.#####.#.#.###.###.#.###.#####.###.#.#
  #.#...#...........#.#.....#.#.#...#...#.#.#...#...#.....#...#.#...#...#.#...#.....................#...#...#...#.....#.#...#...#.....#.#.#...#
  #.#.###.#####.###.#.#####.#.#.#.#.#.###.#.###.#.###.###.#####.###.#.###.###.#.###.#.#.#.#.###.#.#.###.###.###.###.###.#.###.#.#.###.#.#.#####
  #.#.....#.......#.....#.#.....#.#.#.#...#.....#.#...#.#.....#...#.#.#.#.#...#.....#...#.#...#.#.#.#.........................#.#...#.#...#...#
  #.#######.#.#.#######.#.#.#####.#.#.###.#####.#.#.###.#####.###.#.#.#.#.#.#####.#.#####.###.#.#.#.#.###.###.#####.#######.###.#.#.#####.###.#
  #S........#.............#.......#.......#.....#...........#.......#...#.........#.....#.......#...#.......#...................#.#...........#
  #############################################################################################################################################
TEXT

class Complex # :nodoc:
  alias x real
  alias y imag
end

DIRECTIONS = [1, 0 - 1i, -1, 0 + 1i]
TURN = '&'
CROSSROADS = '+'
WALL = '#'
ROAD = '.'
START_POINT = 'S'
END_POINT = 'E'

def main(heading, input)
  @floor = []
  start_pos = nil
  end_pos = nil
  input.lines.map(&:chomp).each_with_index do |line, _y|
    start_pos ||= check(line, START_POINT)
    end_pos ||= check(line, END_POINT)
    @floor << line
  end
  fill_dead_ends(start_pos, end_pos)
  mark_turningpoints(start_pos, end_pos)
  graph = Graph.new
  find_neighbors(start_pos, 1, 0).each do |dest, cost|
    graph.add_edge(start_pos, dest, cost)
  end
  nodes = [end_pos]
  each_square { nodes << _1 if get(_1) == ROAD }
  nodes.each do |node|
    ways_out(node).each do |dir|
      find_neighbors(node, dir, 0).each do |dest, cost|
        graph.add_edge(node, dest, cost)
      end
    end
  end
  shortest_paths = graph.shortest_paths(start_pos)[end_pos]
  distance = shortest_paths[0][:distance]
  puts "#{heading}, part 1: #{distance}"
  # pp shortest_paths.select[:distance]
end

def check(line, char)
  Complex(line.index(char), @floor.length) if line.index(char)
end

def fill_dead_ends(start_pos, end_pos)
  loop do
    changed = false
    each_square do |pos|
      if get(pos) == ROAD && pos != start_pos && pos != end_pos && dead_end?(pos)
        set(pos, WALL)
        changed = true
      end
    end
    break unless changed
  end
end

def mark_turningpoints(start_pos, end_pos)
  each_square do |pos|
    next if [start_pos, end_pos].include?(pos)

    ways_out = ways_out(pos)
    set(pos, CROSSROADS) if ways_out.length > 2
    set(pos, TURN) if ways_out.length == 2 && ways_out.sum.abs != 0
  end
end

def each_square
  @floor.each_with_index do |line, y|
    line.chars.each_with_index { |char, x| yield Complex(x, y) if char != WALL }
  end
end

def ways_out(pos) = DIRECTIONS.reject { get(pos + _1) == WALL }

def find_neighbors(pos, facing, cost)
  next_pos = pos + facing
  case get(next_pos)
  when ROAD, END_POINT
    { next_pos => cost + 1 }
  when START_POINT
    {} # Not useful to go back to start point.
  when TURN
    ways_out = ways_out(next_pos) - [-facing]
    find_neighbors(next_pos, ways_out.first, cost + 1001)
  when CROSSROADS
    ways_out = ways_out(next_pos) - [-facing]
    result = {}
    ways_out.each do |dir|
      score = (dir + facing).abs == 2 ? 0 : 1000
      result.merge!(find_neighbors(next_pos, dir, cost + score + 1))
    end
    result
  when WALL # Can only happen in start_pos.
    result = {}
    ways_out(pos).each { result.merge!(find_neighbors(pos, _1, 1000)) }
    result
  end
end

def dead_end?(pos) = DIRECTIONS.count { get(pos + _1) == WALL } > 2

def get(pos) = @floor[pos.y][pos.x]

def set(pos, char)
  @floor[pos.y][pos.x] = char
end

main('Example 1', EXAMPLE_1) # 7036
main('Example 2', EXAMPLE_2) # 11048
main('Puzzle input', PUZZLE_INPUT) # 114476

__END__

###############
#.......#....O#
#.#.###.#.###O#
#.....#.#...#O#
#.###.#####.#O#
#.#.#.......#O#
#.#.#####.###O#
#..OYOYOOOOO#O#
###X#O#####O#O#
#OOO#O....#O#O#
#O#X#O###.#O#O#
#OOOOO#...#O#O#
#O###.#.#.#O#O#
#O..#.....#OOO#
###############
