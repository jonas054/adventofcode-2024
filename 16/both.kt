val EXAMPLE_1: List<String> = listOf(
    "###############",
    "#.......#....E#",
    "#.#.###.#.###.#",
    "#.....#.#...#.#",
    "#.###.#####.#.#",
    "#.#.#.......#.#",
    "#.#.#####.###.#",
    "#...........#.#",
    "###.#.#####.#.#",
    "#...#.....#.#.#",
    "#.#.#.###.#.#.#",
    "#.....#...#.#.#",
    "#.###.#.#.#.#.#",
    "#S..#.....#...#",
    "###############"
)

val EXAMPLE_2: List<String> = listOf(
    "#################",
    "#...#...#...#..E#",
    "#.#.#.#.#.#.#.#.#",
    "#.#.#.#...#...#.#",
    "#.#.#.#.###.#.#.#",
    "#...#.#.#.....#.#",
    "#.#.#.#.#.#####.#",
    "#.#...#.#.#.....#",
    "#.#.#####.#.###.#",
    "#.#.#.......#...#",
    "#.#.###.#####.###",
    "#.#.#...#.....#.#",
    "#.#.#.#####.###.#",
    "#.#.#.........#.#",
    "#.#.#.#########.#",
    "#S#.............#",
    "#################"
)

val PUZZLE_INPUT: List<String> = listOf(
    "#############################################################################################################################################",
    "#...#.#.....#.......#.......#...#.........#...#...........#.....#.#.......#.......#.....#...#.......#...#.#...............#...#.....#...#..E#",
    "#.#.#.#.#.#.#.#.###.#.#.#####.#.#.#.#####.#.#.#.###.#####.###.#.#.#.#.#.#.#.###.#.#.###.#.###.#####.#.#.#.#.#.#.#########.#.#.#.###.#.###.#.#",
    "#.#...#...#...#...#.#.#.......#...#.....#...#.#.#.#.#.........#...#.#...#.......#.#...#.#.#...#.....#.#...#...#.#.#.....#.................#.#",
    "#.#.#.###.#######.###.#################.#.#####.#.#.#.###########.#.###.#.#######.###.#.#.#.#.#.#.###.#.#####.#.#.#.#.#######.#.#.#####.###.#",
    "#.#.#...#...#...#.....#...............#.#.#...#...#.#.#.........#.#.#...#.......#...#.#.#.#.#.......#.#.#.....#.#.#...................#.#...#",
    "#.#.#.###.#.#.#.#######.#######.###.#.#.###.#.###.#.###.#######.###.#.#.###.###.###.#.#.#.#.#####.#.#.###.###.#.#.#.#######.#####.#.#.#.#.#.#",
    "#.#...#.....#.#.........#.....#...#.#.#...#.#.....#.....#.....#.....#.......#...#.#...#.#.#...#.....#.............#.#.#...#.....#.#.#.......#",
    "#.#.###.#####.#####.###.#.###.#####.#.###.#.#################.#.#######.#####.###.#####.#.###.###.#.#.#.###.#.#.#.#.#.#.#.#####.#.#.#.#.#.###",
    "#.#.....#.........#.....#.#.#.......#...#...#.......................#.....#...#.......#.#...#.....#.#.......#.#.#.....#.#...#...#...#.#.#...#",
    "#.#.#########.###.#.###.#.#.###########.#####.###.#################.###.#.#.###.#######.###.#####.#.###.#####.#.#######.###.#.#######.#####.#",
    "#.#.#...#...#...#...#...#.#...#.......#...#...#.....#...#.........#...#.#.#.#...#.............#...#...#.....................#.......#.......#",
    "#.#.#.#.#.#.#########.#.#.#.#.#.###.#####.###.#.###.#.#.#.#######.###.#.#.#.#.#.#.#############.#.###.#.#.###.#.#.#########.#.###.#.#######.#",
    "#.#.#.....#...#.......#...#.#...#...#.....#...#.#.....#...#...#.....#.....#.#.#.#.#.....#.......#...#.#.............#...#...#.#.#.#.#.....#.#",
    "#.#.#.#######.#.#####.#.#####.###.#.#.#####.###.#.#########.#.#.#######.###.#.#.#.###.#.#.#######.###.#.#.#######.#.#.###.###.#.#.#.###.#.#.#",
    "#...#.......#...#.....#.....#...#.#.#.....#...#.#.#...#...#.#.#.........#...#.#.#.#...#.#.....#.#...#.#.#.........#...#...#.................#",
    "#.#########.#####.#.#.#.###.#####.#######.###.#.###.#.#.#.#.#.#.#########.###.###.#.###.#####.#.#.#.#.#.#########.###.#.###.###.#.#######.###",
    "#.#...#.....#...#.#.#...#.#.#...#.......#...........#...#...#.#...#.....#.#.....#.#.#.....#...#.#.#.......#.....#.......#...#.............#.#",
    "#.#.#.#.#####.###.#.#####.#.#.#.#######.#######.#.###########.###.#.###.#.#####.#.#.#.#####.###.#.#######.###.#########.#.###.#####.#.###.#.#",
    "#...#...#...#.....#.#.....#...#.......#.....#...#...........#...#...#.#.#.....#...#.#.#.....#...#.#.....#.#.............#.....#...#.#...#...#",
    "#.#######.#.#.#####.#.#.#####.#.#####.#####.#.###.#########.###.#####.#.#####.#.###.#.#.#####.###.#.###.#.#.#.#.#############.#.#.#.#.#.#.#.#",
    "#.#.......#.#.....#.#.#.#.....#...#.#.......#...#.#.......#...#.#.....#...#.#.#...#.#.#...#...#.......#.#...#.#.......#...#...#.#...#.#...#.#",
    "###.#######.#######.#.#.#.#####.#.#.#######.###.#.#.#.###.###.#.#.###.###.#.#.###.#.#####.#.###.###.#.#.#############.###.#.###.###.#.###.#.#",
    "#...#.....#.....#...#.#.#.....#.#.#...#...#...#.#.#.#...#.#...#...#.#...#.....#.....#.....#...#.....#.#.#...#...#.....#...#.#...#...#...#...#",
    "#.#####.#######.#.#.#.#######.#.#.#.#.#.#.#.###.#.###.#.###.#.#.###.#.###.###.#######.#####.#.###.#.#.#.#.#.#.#.#.#####.###.#.###.#####.###.#",
    "#.#...#.....#...#...#.......#.#.#.#.#.#.#...#...#...#.#...#.#...#...#.....#...........#.....#.#...#.#.#...#...#.#...#...#...#...#.......#...#",
    "#.#.#.###.###.###.#.#.#####.#.#.#.#.#.#.#####.#.###.#.###.#.#.###.#.#######.###.#############.#.#####.#########.#.#.#.#.#.#####.#####.###.###",
    "#.#.#...#...#...#.#.#.#...#...#.#.#.#.#...........#.#...#...#...#.#...#...#...#...#.....#...#.#...#...#.#.....#.#.#.#.#...#...#...#...#...#.#",
    "#.#.###.#.#.###.#.#.###.#.#.#.#.#.###.###.###.#####.###.#######.#.#####.#.###.###.#.###.#.#.#.###.#.###.#.#.#.#.###.#.#######.###.#####.###.#",
    "#.#.#...#.#...#.#.#...#.#.#.....#...#.....#...#.....#.#...#...#.#.#.....#.....#...#.#.#...#...#...#.#.....#.#.#...#...#.....#...#.......#...#",
    "#.#.#.#####.#.#.#####.#.#.#.#######.#######.###.###.#.###.###.#.#.#.#.#########.#.#.#.#######.#.###.###.###.#####.#.#.#.###.###.#########.#.#",
    "#...#.#.....#.#.....#...#.#.#.....#.......#.#...#.......#...#.....#.#.#.........#...#.......#.#...#...#...#.......#.#...#.......#...#.....#.#",
    "#.###.###.#.###.###.#.#.#.#.#.#.#.#######.#.#.#######.#.###.#######.#.#.#########.#.#.#####.#.###.###.###.###.#####.#.#########.#.#.#####.#.#",
    "#...#.#...#.#.......#.#.#.#.#.#.#.......#.#.#...#...#.#.#...........#.#.....#...#.#.#.#...#.....#...#.......#.......#.#...#.#...#.#.#.....#.#",
    "#####.#.#####.#######.#.#.#.###.#########.#.#.#.#.#.#.#.#.###########.#.#.#.#.#.#.#.###.#.#########.###.###.#.###.#.#.#.#.#.#.###.#.#.#####.#",
    "#...#.#.....#.....#.....#.#...#.........#.......#.#...#.#.#...#.....#.....#.#.#...#.#...#.#.......#...#...#.#...#.#.#.#.#.#.....#.#...#...#.#",
    "#.#.#.#.###.#####.#######.###.#.#.#####.#####.###.###.###.#.#.###.#####.###.#.#####.#.###.#.#####.###.###.#.###.#.#.###.#.#####.#.#####.###.#",
    "#.#...#...#...#...#.......#.#.#...#...#.....#...#...#.#...#.#.#...#.........#.....#.....#.......#...#.#...#.#...#.#.....#...#...#...#.#.....#",
    "#.#########.#.#.###.#####.#.#.###.###.###.#.###.###.###.###.#.#.###.#####.#########.###.###########.#.#.#.#.#.###.#########.#.#####.#.#.#####",
    "#.............#...#.....#...#...#...#...#.....#.........#...#.#.....#.........#...#.......#.......#.#.#...#.#...#...#.......#...............#",
    "#.#.###.#########.###.#.###.###.###.###.#.###.###.#####.#.###.#.#######.#.###.#.#.#########.#####.#.#.#####.###.#####.#.#############.###.#.#",
    "#.#...#.........#...#.#...#...#.#.......#...#...#.........#.#.#...#.....#.....#.#...........#.#...#.#.....#.#...#.......#.......#.....#.#...#",
    "#####.#.#######.###.#.###.#####.###.###.###.###############.#.###.###.###.#####.#############.#.###.#####.#.#.###.###.###.#####.###.#.#.###.#",
    "#.....#...#...#...#.#...#.....#.......#.#...#.........#.....#.......#...#.....................#.#.....#.#...#.#...#...#...#...#.#...#.....#.#",
    "#.#######.#.#.###.#.###.#####.#######.###.###.###.###.#####.#.#####.###.#############.#####.###.#.#.#.#.#####.#.#.#.###.###.#.#.#.#######.#.#",
    "#.#...#...#.#...#...#...#.#...#.....#.#...#...#...#...#.....#.....#.....#...#.........#...#.#...#.#.#...#.#...#.#.#...#.....#.#.#.....#...#.#",
    "#.#.###.###.###.#####.###.#.#.#.#####.#.###.###.###.#.#.###.#####.#####.#.###.#.#####.#.#.#.#.###.#.###.#.#.###.#.#########.###.#.###.#.###.#",
    "#.#...#...#...#.....#.....#.#...#.............#.#...#...#...#.#...#...#...#...#.#...#...#...#.#.#.#...#...#...#.#...........#...#...#.......#",
    "#.#.#.###.###.#.#######.###.###.#.#########.#.#.#.#.#.###.#.#.#.###.#####.#.###.#.#.#########.#.#.###.#######.#.#############.#####.###.#####",
    "#.#.#...#...#.#.........#...#...#.#.......#...#...#.#...#.#.#.#.#.....#...#...#...#.#.......#.#.....#...#...#.#.........#.....#.....#.......#",
    "#.#.#.#####.#.#######.###.#######.#.#####.###.###.#.###.#.#.#.#.#####.#.#####.#####.#.#####.#.#.###.###.#.#.#.###########.#####.#####.#.###.#",
    "#.#.............#...#.#...........#.#.....#...#...#...#.#...#.#.....#.#.#...#...#.#...#...#...#...#.#.#.#.#.#.#.......#...#...#.#.........#.#",
    "#.###.#.#####.###.#.###.###.#######.#.#######.#.#####.#.#.###.#####.#.#.#.#####.#.###.###.#######.#.#.#.#.#.#.#.#####.#.###.#.#.#.###.#.#.#.#",
    "#...#...#...#.#...#...#.#...#.......#...#...#.#.....#.#.#.........#.......#.....#.#...........#...#...#...#...#...#.#...#...#.#.#...#...#.#.#",
    "#.#.#.###.#.###.###.#.#.#.###.#########.#.#.###.###.#.#.###########.#####.#.###.#.#.#.#######.#.#####.###########.#.#######.#.#.#######.#.#.#",
    "#.#.............#.....#.#.....#.......#...#...#.#...#...#...#.....#.....#.#.#...#...#.....#...#.#.....#...#...............#.#.#.......#.#...#",
    "#.#.#.#.###.#.###.#####.#.#.###.#####.#######.###.#.#####.#.#.###.#####.###.###.#.#######.#.###.#.#####.#.#.###########.#.###.#######.#.###.#",
    "#.#.#...#...#.#.#.#.......#.#...#.......#...#.....#.#...#.#...#.#.#...#.#...#...#.......#.#.....#.......#.#...#.......#.#.....#.....#.......#",
    "#.#.#.###.###.#.#.#####.###.#.###.#.###.#.#######.###.#.#.#####.#.#.#.#.#.###.###.#####.#.#############.#.#.#.#.#.###.#.#.#####.#.#####.#.#.#",
    "#.#...#.......#.#.#...#.....#.#...#...#.#.........#...#...#.....#...#...#.#.......#...#.#...#...........#.#.#.#.#.#...#.#.#.................#",
    "#.###.#########.#.#.#.#####.#.#.###.###.#.#########.###########.#.#####.#.#.#######.#.#.###.#.#######.###.###.#.#.#.###.###.#######.#.#.#####",
    "#.......#.......#...#.....#.#.#.#...#...#...#...#...#...........#.....#.#.#.#.......#...#.#...#.....#...#.....#.#.#...#...#.................#",
    "#.#.#.#.###.#.#######.###.###.#.#.###.#####.#.###.###.#########.#.#####.#.#.#.#.#######.#.#####.#.#.###.#########.#.#.###.#.###.#.#########.#",
    "#.#...#.....#.......#...#.....#.#.....#.......#...#...#...........#.....#.#.#.#.#.......#.........#...#...........#.#.....#.#...#.......#...#",
    "#.###.###.#.#####.#.#.#.#######.#######.#######.###.###.###########.#####.#.###.#####.###.#########.###########.###.#####.#.#.#######.#.#.###",
    "#...#.#...#.#...#.#.#.#.......#...#.....#.....#.#...#...........#.......#.#...#.#...#.....#.......#.#...........#.......#.#.#...#...#.#.#.#.#",
    "###.#.#.###.#.###.#.#####.#######.#######.###.#.#.#.#########.###.#######.###.#.#.#.#####.#.#####.#.#.###############.###.#.###.###.#.###.#.#",
    "#.#...............#.#...#.......#.......#...#...#.#...#.....#.....#.#...#...#...#.#...#.#.#...#.#.#.#.#.....#.......#.#...#...#...#.#...#...#",
    "#.#.#.###.#.###.###.#.#.#.###.#.#######.###.###.#.###.#.###.#.#####.#.#.###.#####.###.#.#.###.#.#.###.#.#.#.#####.#.#.#.###.#.#.#.#.###.###.#",
    "#.....#...#.#...#.....#.#.#...#.......#.#...#.....#...#...#.....#...#.#...#.#.....#...#...#...#.#.#...#.........#.#...#...#.#...#...#.#.....#",
    "#######.#####.#########.###.#########.#.#.###.#####.###.#.#####.#.###.###.#.#.#####.###.###.###.#.#.#####.#####.#.###.###.#.###.###.#.#######",
    "#.....#.#.....#.....#.#.....#.....#...#...#...#.....#...#.....#...#...#...#.......#.#.....#.#.....#.#.....#...#.#...#...#...#.#.#...#...#...#",
    "#.#.#.#.#.#####.###.#.###.#.#.###.#########.###.###.#.###.###.###.#.#######.###.###.#.#####.#.#####.#.#####.#.#.###.###.#####.#.#.#####.#.#.#",
    "#...#...#.#...#.#.#.#.....#.#.#.#...#.....#...#.#...#...#.#...#...#.#.........#.#...#.#.....#...#...#.#...#.#.......#...#.....#.#.#...#...#.#",
    "###.#.#.#.#.#.#.#.#.###.###.#.#.###.#.#.###.###.#.###.###.#.###.###.#.#.#.#.#.###.#####.#######.###.#.#.#.#.#.#########.#.#####.#.#.#.#####.#",
    "#...........#.....#...#.....#...#...#.#.....#.....#.......#.#...#...#.#.#.#.#.#...#.....#.......#...#...#.#.#.........#.#.....#.#.#.#.......#",
    "#.#.#.#.#########.###.#.#######.#.###.#######.###.#.###.###.###.#.###.#.###.#.#.#####.###.#######.###.###.#.#####.###.#.###.#.#.#.#.#.#####.#",
    "#.#...#.....#.....#.#.#.#.....#.#.#...#.......#...#.#.#.#.#...#.#...#...#...#...#.....#...#.....#.#.#...#.#.#.......#.#...#.#.#.#...#.......#",
    "#.#.#.#.#.#.###.#.#.#.###.###.#.#.#.###.###.#.#.###.#.#.#.###.#.###.#.#.#.#########.###.###.#.#.#.#.#.#.#.#.#####.#.#.#.#.###.#.#####.#.#####",
    "#.#.......#.....#...#.......#.#.#...#...#.....#...#...#...#.#.......#.#...#.........#...#...#.#...#...#...#...#...#.#.#.#.....#.#.....#.....#",
    "#.#.#.#.###.#######.#########.#.#####.#.#######.###.#####.#.#########.###########.###.#######.#####.###.#####.#.###.#.#.###.###.#.###.#.#.#.#",
    "#.....#.....#.....#...#.....#.....#.#.#.............#.....#.......#.......#.......#.#.#.......#...#.#.#.....#.#.#...#.#...#.#...#...#.#.#.#.#",
    "#.#.#.#.#####.###.#####.###.#####.#.#.#.#.###########.#####.#####.#####.#.#.#######.#.#.#######.#.#.#.#####.#.#.#####.#.###.#.#####.#.#.#.#.#",
    "#...#.#.....#.#.#.#.....#.....#.....#.#.#...#.......#.....#.....#.....#.#.#...#...#.#.#.#.......#.#.#.....#.#...#.....#.#...#.....#...#...#.#",
    "#.#.#.#.###.#.#.#.#.#########.#######.#####.#.#.#.#######.#.#.#.#####.###.#.#.#.#.#.#.#.#.#########.#.###.#.###.#.#####.#.#######.#.#.#####.#",
    "#...#.#.....#.#...#.#.......#.......#.....#...#...#.........#.#.....#...#.#.#...#.#.#.#.#.........#...#.#.#...#.#.#.............#.#.#...#...#",
    "#####.#.#####.#.###.#.#####.#######.#####.#####.###.#########.#.###.###.#.#.#####.#.#.#.#.#######.#####.#.###.#.#.###.###########.#.#.###.###",
    "#...#.#.#...#.#.#.......#...#.#...#...........#...#.......#...#.#...#...#.#...#...#.#...#.#.....#.......#.#.#...#...#.#...........#.#...#.#.#",
    "#.#.#.#.#.###.#.#########.###.#.#.#.#############.###.###.#.###.#.###.###.###.#.###.#####.#.#####.#.#.###.#.#######.###.###########.#.#.#.#.#",
    "#.#...#.#.#...#.#.........#.#...#...#...........#.#...#...#.#...#.........#...#.#...#...#.#...#...#.#...#.#.#.......#...#...........#.#.#.#.#",
    "#.###.#.#.#.###.#.#########.#.#######.#####.###.#.#.#.#.###.#######.#######.###.#.#.#.#.#.###.#.#####.#.#.#.#.#######.#.#.#####.#.#.#.#.#.#.#",
    "#...#.....#.#.....#.....#.............#...#.#...#...#.#.#.#.........#.......#...#.#...#.#.#...#...#...#.....#...#...#.#...#...#...#...#.#...#",
    "#.#.#.#.###.#######.###.#####.#####.###.#.#.#.###.#####.#.#.#######.#######.#.#########.#.#.#####.#.###########.#.#.#.#.#.#.#####.###.#.###.#",
    "#.#.......#.........#.#...#...#.....#...#...#.....#.....#.#.#.....#.#.....#.#.......#...#.#.#.....#.#.........#...#.#.#.#.#...#.....#.#...#.#",
    "#.#######.#.#########.###.#.#.#.#####.###.#######.#.#####.#.#.###.#.#.#.#.#.#######.#.###.#.#.###.#.#.#######.###.#.#.#.#.#.#.#.#####.#.###.#",
    "#.......#.#.......#...#.#.....#.......#...#.....#.#.#.#.....#.#...#.....#.#.#.....#.#.......#...#.#.#.#.....#...#.#.#.#...#.#.#...#...#.....#",
    "###.#####.#######.#.#.#.#####.#.###########.###.###.#.#.#####.###.#######.#.#.###.#.#######.###.###.#.#.#######.###.#.#.#.#.#.#.###.#####.#.#",
    "#...#.....#.......#.#.....#...#.#...........#.#.#...#...#...#...#.........#.#...#.#.#...#...#...#...#.#.......#.....#.#.#.#.#...#...#...#.#.#",
    "#.###.#####.#.#####.#####.#.###.#.###.#######.#.#.#######.#.###.###########.###.#.#.#.#.###.#.#.#.###.#######.#.#####.#.#.#####.#.#####.#.#.#",
    "#...#.#.....#...#...#...#.#.#...#.....#.......#.#.#.......#.....#.#.......#...#.#.#...#...#.#.#.#...#.#.....#...#.....#.#.#...#.#.......#.#.#",
    "###.#.#.###.###.#.#.#.#.###.#.#######.#####.#.#.#.#.#.#.#########.#.###.#####.###.#######.#.#.#.#.###.#.###.#####.#######.#.#.#####.#####.#.#",
    "#.#.#.#.#...#...#.#...#...#.....#...#.#.....#.#.....#.#.#.....#.......#...........#.....#.#...#...#...#.#.#...#...#.....#.#.#.....#.#.....#.#",
    "#.#.#.#.#.###.###########.#####.###.#.#.#####.#######.###.###.#.#################.###.###.###.#####.###.#.###.#.###.###.#.#.#####.#.#.#.###.#",
    "#...#.#.#...#...#.....#...#...#...#.#.#...#.#.......#.#.....#.#.#...#.......#...#...#...#...#.....#...#.#.......#...#...#...#...#...#.#.#...#",
    "#####.#.###.###.#.###.#.###.#.###.#.#.###.#.#######.#.#.#####.#.#.#.#.#####.#.#.###.###.###.#####.###.#.###.#####.#.###.#.###.#.#####.###.###",
    "#.....#...#...#.#...#...#...#.#.#.#.#.....#.......#.#...#.#...#...#.#.#.....#.#...........#.#...#...#.#...#.......#...#.#.#...#.....#...#.#.#",
    "#.#######.#.###.###.#####.###.#.#.#.###########.#.#.#.###.#.#######.#.#.#################.#.#.#.#####.###.#.#########.#.#.#.#####.#####.#.#.#",
    "#.......#.#.........#.....#...#.......#.......#.#.#.#.....#.....#...#.#.#.............#...#...#.....#.....#.#.....#...#.#...#.....#.....#.#.#",
    "#.#####.#.###########.#.#.#.#####.#####.#.###.#.#.#.#######.###.#####.#.#.###########.#.#######.###.#.#####.#.###.#.###.#####.#####.#####.#.#",
    "#.#...#.#.......#.....#...#.....#.#.....#...#.#.#.#...#...#...#.#.....#.#.#.......#...#...#...#.#...#...#...#.#...#...#...#.......#...#.....#",
    "#.#.#.#.#######.#.#############.###.#######.#.#.#.###.#.#.#####.#.#####.#.#.#.###.#.###.###.#.###.###.#.#####.#.#####.###.###########.#.###.#",
    "#...#.#...#.....#.....#.......#.....#.......#.......#...#.#.....#.#...#.....#...#.#...#.#...#.....#.....#.....#.#...#.#.........#.....#...#.#",
    "#####.###.###.#######.#.###.#.#######.###.#######.#.#####.#.#####.#.###.#######.#.###.#.#.###########.###.#####.#.#.#.#########.#.#.#.###.#.#",
    "#...#...#...#.#.....#.#.#...#...#.....#...#...#...#.#...#.#.#.....#.............#...#.#.#...........#.....#...#.....#.....#.....#...#.#.#...#",
    "#.#.###.###.###.###.#.###.#####.#.#####.#.#.#.#.#.###.#.#.#.###.###.#####.###########.#############.#########.#####.#.#.#.#.#.#.###.#.#.###.#",
    "#.#...#.#.#.......#.#.....#.....#.....#.#.#.#...#...#.#.#...#...#.....#.#.#.......#...#.......#.....#.............#.#...#.#.#...#...#.....#.#",
    "#.#####.#.#######.#.#######.#####.###.#.#.#.#######.#.#.#####.#######.#.#.#.#####.#.###.#####.#.#####.#####.#######.#.#.#.#.#.#.#.#.#####.#.#",
    "#.......#...#...#.#.......#.....#.#.....#.#...........#.............#...#.....#.#...#.#...#...#.....#.....#.#...#...#...#.#.#.#.#.#.......#.#",
    "#.#######.#.#.#.#####.#.#######.#.#.#.#.#########.#####.#.#####.###.#.#######.#.#####.#.#.#.###.###.#.###.###.#.#.#######.#.#.#.#.#.#######.#",
    "#.#.......#.#.#.....#.......#.....#...#.........#.#.#...#.#.........#.......#.#.....#...#.#.#.....#.#...#.....#.#.#.......#.#.....#.#...#...#",
    "#.#.#######.#.#####.#######.#.###.#.#########.#.#.#.#.###.#.###########.###.#.#.###.#####.#.#######.#.#########.#.#.#######.#####.#.#.###.###",
    "#.#.......#.#.#.#...#...#...#...#.#.....#.....#.#...#.#.....#...........#.#.#...#.......#.#...#.....#.#.......#.#...#...#...#.....#...#...#.#",
    "#.#########.#.#.#.###.#.#.#####.###.###.#.#.#.#####.#.#.#####.#########.#.#.###########.#.###.#.#####.#.#####.#.#####.###.###.#####.###.###.#",
    "#.#.........#.#.#...#.#.#.#...#...#.....#.#...#.....#.#.....#.#...........#.........#.#.#.#.#...#...#.#.....#...#...........#.#...#.....#...#",
    "#.#.#######.#.#.###.#.#.#.#.#.###.###.#.#.#####.#####.#.###.#.#.#########.#########.#.#.#.#.#####.###.#####.###.#.###.#####.#.#.#.#.#####.#.#",
    "#...#...#...#.#.......#.#.#.#.....#...#.#.....#...#...#.#.#.#.#.........#...#.......#...#.#.#.........#...#...#...#...#...#...#.#...#.....#.#",
    "#####.#.#.###.#.#######.#.#.#######.###.#####.#.#.#.###.#.#.#.#####.#######.#.#######.###.#.#.#########.#.###.###.#.###.#.#.#.#.###.#.#####.#",
    "#.#...#.#.#...#.#...#.#...#.#...#.....#.....#.#.#.......................#...#.#...#...#...#...#.........#...#.....#.#...#.#...#...#...#...#.#",
    "#.#.###.#.#.#####.#.#.###.#.#.#.#####.###.#.#.#.#.#.#.###.#####.#.###.#.#.###.#.###.###.#####.#.###.#######.#.###.#.#.###.#######.#.###.###.#",
    "#.#...#...#.#.....#.#...#.#...#...#...#.#.....................#.....#.#.#...#.#.#...#...#...#...#...#...#...#.......#.#.#.........#...#.#...#",
    "#.###.#.###.#.#####.#.###.#######.#.###.#.###.###.#.###.#.###.#######.#.###.#.#.#.###.###.#.#####.###.#.#.#######.#.#.#.#######.###.#.#.#.###",
    "#...#...#...#.#.#...#...#.......#.#.....#.......#.#...#...#...................#.....#...#.#.............................#.........#...#.#...#",
    "###.#.#.#.###.#.#.#####.#######.#.#########.###.#.###.#####.###.###.#####.#.#.###.#.###.#.#########.#.#####.#####.#.###.###.#####.#.###.###.#",
    "#...#.#.#.....#.#.....#.....#...#.....#...#.#...#.#.......#...#.#...#...#.#.#.....#.....#.#.....#.....................#...#.#...#...#.....#.#",
    "#.###.#.#######.#####.#####.#.#######.#.#.#.#####.#######.###.#.###.#.#.#.#.#####.#######.#.###.#.#.###.#####.#.#.###.###.#.###.#####.###.#.#",
    "#.#...#...........#.#.....#.#.#...#...#.#.#...#...#.....#...#.#...#...#.#...#.....................#...#...#...#.....#.#...#...#.....#.#.#...#",
    "#.#.###.#####.###.#.#####.#.#.#.#.#.###.#.###.#.###.###.#####.###.#.###.###.#.###.#.#.#.#.###.#.#.###.###.###.###.###.#.###.#.#.###.#.#.#####",
    "#.#.....#.......#.....#.#.....#.#.#.#...#.....#.#...#.#.....#...#.#.#.#.#...#.....#...#.#...#.#.#.#.........................#.#...#.#...#...#",
    "#.#######.#.#.#######.#.#.#####.#.#.###.#####.#.#.###.#####.###.#.#.#.#.#.#####.#.#####.###.#.#.#.#.###.###.#####.#######.###.#.#.#####.###.#",
    "#S........#.............#.......#.......#.....#...........#.......#...#.........#.....#.......#...#.......#...................#.#...........#",
    "#############################################################################################################################################"
)

data class Point(val x: Int, val y: Int) {
    operator fun plus(other: Point) = Point(x + other.x, y + other.y)
    operator fun unaryMinus() = Point(-x, -y)
    fun abs2() = x * x + y* y
}

typealias CostMap = MutableMap<Point, Int>

fun emptyCostMap() = mutableMapOf<Point, Int>()

var startPos = Point(-1, -1)
var endPos = Point(-1, -1)
val floor = ArrayList<StringBuilder>()
val DIRECTIONS = listOf(Point(1, 0), Point(-1, 0), Point(0, 1), Point(0, -1))
val ROAD = '.'
val WALL = '#'
val TURN_OR_CROSSROADS = '+'
val START_POINT = 'S'
val END_POINT = 'E'
val BEST_PATH = 'B'

fun main() {
    run("Example 1", EXAMPLE_1) // 7036, 45
    run("Example 2", EXAMPLE_2) // 11048, 64
    run("Puzzle input", PUZZLE_INPUT) // 114476, 508
}

fun run(heading: String, input: List<String>) {
    println("\n${heading}")
    parse(input)
    fillDeadEnds()
    markTurningpoints()
    val forwards = runGraph(Point(1, 0), startPos)
    val answer = forwards[endPos]
    println("Part 1: ${answer}")
    val backwards = listOf(Point(-1, 0), Point(0, 1)).map { runGraph(it, endPos) }
    forwards.forEach { node, distance ->
        if (backwards.any { it[node]!! + distance == answer })
            set(node, BEST_PATH)
    }
    println("Part 2: ${search(startPos, mutableSetOf<Point>()).size}")
}

fun search(pos: Point, visited: MutableSet<Point>): MutableSet<Point> {
    if (listOf(START_POINT, BEST_PATH, TURN_OR_CROSSROADS).contains(get(pos))) {
        visited.add(pos)
        DIRECTIONS.map { pos + it }.forEach { nextPos ->
            if (get(nextPos) != WALL && !visited.contains(nextPos))
                search(nextPos, visited)
        }
    }
    return visited
}

fun runGraph(initiallyFacing: Point, startAt: Point): Map<Point, Int> {
    val graph: MutableMap<Point, CostMap> = mutableMapOf()
    graph[startPos] = findNeighbors(startPos, initiallyFacing, 0)
    val nodes: MutableList<Point> = mutableListOf(endPos)
    floor.forEachIndexed { y, line ->
        for (x in 0..(line.length - 1)) {
            if (line[x] == ROAD)
                nodes.add(Point(x, y))
        }
    }
    nodes.forEach { node ->
        graph[node] = emptyCostMap()
        waysOut(node).forEach { dir -> graph[node] = merge(graph[node]!!, node, dir, 0) }
    }
    return dijkstra(graph, startAt)
}

fun dijkstra(graph: MutableMap<Point, CostMap>, start: Point): CostMap {
    val distances = emptyCostMap()
    val visited = mutableSetOf<Point>()
    val nodes = graph.keys.toMutableList()
    val maxValue = 1000000000

    nodes.forEach { node -> distances[node] = maxValue }
    distances[start] = 0

    while (nodes.size > 0) {
        val minNode: Point = nodes.minBy { if (visited.contains(it)) maxValue else distances[it]!! }!!
        if (distances[minNode] == maxValue)
            break

        graph[minNode]!!.forEach { neighbor, value ->
            distances[neighbor] = minOf(distances[minNode]!! + value, distances[neighbor]!!)
        }
        visited.add(minNode)
        nodes.remove(minNode)
    }
    return distances
}

fun findNeighbors(pos: Point, facing: Point, cost: Int): CostMap {
    val nextPos = pos + facing
    return when (get(nextPos)) {
        ROAD, END_POINT, START_POINT ->
            mutableMapOf(nextPos to cost + 1)
        TURN_OR_CROSSROADS ->
            waysOutExcept(nextPos, -facing).fold(emptyCostMap()) { result, dir ->
                merge(result, nextPos, dir, cost + if ((dir + facing).abs2() == 4) 1 else 1001)
            }
        WALL ->
            waysOut(pos).fold(emptyCostMap()) { result, dir -> merge(result, pos, dir, 1000) }
        else ->
            emptyCostMap()
    }
}

fun merge(acc: CostMap, pos: Point, dir: Point, cost: Int): CostMap {
    return (acc + findNeighbors(pos, dir, cost)).toMutableMap()
}

fun parse(input: List<String>) {
    input.forEach { line ->
        if (line.indexOf(START_POINT) != -1)
            startPos = Point(line.indexOf(START_POINT), floor.size)
        if (line.indexOf(END_POINT) != -1)
            endPos = Point(line.indexOf(END_POINT), floor.size)
        floor.add(StringBuilder(line))
    }
}

fun fillDeadEnds() {
    var changed = true
    while (changed) {
        changed = false
        floor.forEachIndexed { y, line ->
            for (x in 0..(line.length - 1)) {
                if (line[x] == ROAD && isDeadEnd(Point(x, y))) {
                    floor[y][x] = WALL
                    changed = true
                }
            }
        }
    }
}

fun markTurningpoints() {
    floor.forEachIndexed { y, line ->
        if (y >= 1 && y < floor.size - 1) {
            for (x in 1..(line.length - 2)) {
                var pos = Point(x, y)
                if (get(pos) == ROAD && pos != startPos && pos != endPos) {
                    val waysOut = waysOut(pos)
                    if (waysOut.size > 2 || isTurn(waysOut))
                        set(pos, TURN_OR_CROSSROADS)
                }
            }
        }
    }
}

fun isTurn(waysOut: List<Point>): Boolean {
    return waysOut.size == 2 &&
        waysOut.fold(Point(0, 0)) { acc, way -> acc + way } != Point(0, 0)
}

fun isDeadEnd(pos: Point) = waysOut(pos).size < 2

fun waysOutExcept(pos: Point, exception: Point): List<Point> {
    return DIRECTIONS.filter { it != exception && get(pos + it) != WALL }
}

fun waysOut(pos: Point) = DIRECTIONS.filter { get(pos + it) != WALL }

fun get(pos: Point) = floor[pos.y][pos.x]

fun set(pos: Point, c: Char): Unit {
    floor[pos.y][pos.x] = c
}
