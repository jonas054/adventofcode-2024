def EXAMPLE = [
    "##########",
    "#..O..O.O#",
    "#......O.#",
    "#.OO..O.O#",
    "#..O@..O.#",
    "#O#..O...#",
    "#O..O..O.#",
    "#.OO.O.OO#",
    "#....O...#",
    "##########",
    "",
    "<vv>^<v^>v>^vv^v>v<>v^v<v<^vv<<<^><<><>>v<vvv<>^v^>^<<<><<v<<<v^vv^v>^",
    "vvv<<^>^v^^><<>>><>^<<><^vv^^<>vvv<>><^^v>^>vv<>v<<<<v<^v>^<^^>>>^<v<v",
    "><>vv>v^v^<>><>>>><^^>vv>v<^^^>>v^v^<^^>v^^>v^<^v>v<>>v^v^<v>v^^<^^vv<",
    "<<v<^>>^^^^>>>v^<>vvv^><v<<<>^^^vv^<vvv>^>v<^^^^v<>^>vvvv><>>v^<<^^^^^",
    "^><^><>>><>^^<<^^v>>><^<v>^<vv>>v>>>^v><>^v><<<<v>>v<v<v>vvv>^<><<>^><",
    "^>><>^v<><^vvv<^^<><v<<<<<><^v<<<><<<^^<v<^^^><^>>^<v^><<<^>>^v<v^v<v^",
    ">^>>^v>vv>^<<^v<>><<><<v<<v><>v<^vv<<<>^^v^>^^>>><<^v>>v^v><^^>>^<>vv^",
    "<><^^>^^^<><vvvvv^v<v<<>^v<v>v<<^><<><<><<<^^<<<^<<>><<><^^^>^^<>^>v<>",
    "^^>vv<^v^v<vv>^<><v<^v>^^^>>>^^vvv^>vvv<>>>^<^>>>>>^<<^v>^vvv<>^<><<v>",
    "v^^>>><<^^<>>^v^<v^vv<>v^<<>^<^v^v><^<<<><<^<v><v<>vv>>v><v^<vv<>v^<<^",
]

def MINI_EXAMPLE = [
    "########",
    "#..O.O.#",
    "##@.O..#",
    "#...O..#",
    "#.#.O..#",
    "#...O..#",
    "#......#",
    "########",
    "",
    "<^^>>>vv<v>>v<<",
]

def PUZZLE_INPUT = [
    "##################################################",
    "#O.O.O.O.......O.#O...O.OO.O.#..O..O.....OO.O....#",
    "#O.O.O..O.OOO.O......O..OO..#O.O....O.O#..O..OO..#",
    "#.O.O....OO.OO.....OOO.......O............OO.O...#",
    "#.......O.#.OO..#O.O....O..OO.O..........O#..O..##",
    "#....O...O.....O#....O.O...#.O.O..O..#....#.....##",
    "#.O.#.O..O.OO.O.O.OO..O#..#O...O##....#.O.O..O..O#",
    "#..OO.##O..O....#.OOO.O#O..O...#.O..O.O.OO..OO...#",
    "#.#......O##....O.O..O....O..OOOO......O.#O#...#.#",
    "#.......#O.#....OO....O....OO....OO#.#......OOO..#",
    "#.#..#.O....OO.#.......OO........O.O...#..OOO...##",
    "#..O..O...OO#.......O..#O...#..OO..O..#.#..#..O..#",
    "#O#...O.#O.OOO.O..OOO.......#......O#O.OO...#...O#",
    "#.#O.#...##O.OO..###.O..O#..O...OO..O.....OOO#.#.#",
    "##........O.#.O......O......##......O..OO...O.O..#",
    "#......O.OO..O.......O...O.O#O.......O...OO.O..O.#",
    "#.O....#.O.........O.....O......OO....OO.OOO..O#.#",
    "#..O#..O....OOOO.O.O......OO....O.....O#OO..#O...#",
    "###OO.O.....OOO.....OO#.....O....OOOO.#..O#..##O.#",
    "#.O.....O.#.#OO.#.O........O......#O...#...#.OO..#",
    "#..O..........O...O.#.#.OO#............OO#.#..O..#",
    "#......O.....O.O..O..OO..O...O....OO.O##..O.....O#",
    "#O#.#..#..O...O#.##O#.O#..#..O.OO.........OO..##.#",
    "#..O..O##OO.#.#....O.#O.......OO.O....O.O.O..#...#",
    "#OO..#......#.##OOOO....@..OO.O...O.O...OOOO....O#",
    "#..OOO..#...OO..##O.O...#.....O...O#...O.O..O.#.O#",
    "##...OO........O.#..#......O.O......O..#.O.....O##",
    "#...#....O.#..OO.O....#.O##.O...#..#O........O..O#",
    "#O.OO..O..O.#.O...O..#O...O.O..O....O.O.O..O.#.O.#",
    "#...O...O...O....O...O.O....#...O.O..OO....O.O..O#",
    "#OO#.#O..OOO.#O.O..O...O.OO..OO.......O.........O#",
    "#...OOOO.OO#........O.#.....#.OO.O...O...O....OO.#",
    "#O.O..O..OOO.O...OO.....O..#O..OO......O.......O.#",
    "#.O.O..OO#..#....O..............O.#..O.....O.O#..#",
    "#.O..OO.......O......O.....O.O#O.#..O.O#.OO.....O#",
    "#........OO.O#..O....O.......#O......#O#O....O.OO#",
    "#O.#.#O.....#..#..#.#..O.#..#.O.#O.#.O.O....O#O..#",
    "#O#....O.....O.#.#OO..O..#OO....O....#O.O.....O..#",
    "#OO#..#.OOOOO.......#....#.O#..OO......OO...O.#.O#",
    "#.O#...O.........O.O.....O.O..O..O..OO......OO...#",
    "#..O..O#O.O.OO.....OOOO.O...OO.OO#O......O#..#.O.#",
    "#OO.#OOO......O..#OOOOO#....#...O.#.O#...OO.O.O.O#",
    "#.O.O#....#O........O..#O.O....O......O.OO...#..O#",
    "#.........OO..O......O.......O.##.............O..#",
    "#....#.O.OO.O.....#.OO.O..O#OOO.....#.O.O.#...O..#",
    "#.OO.............#....OO.#OO....OO#....O....OOOO.#",
    "#O.O.O.........O#..OO.......OO.O..#..O..O...O.O.O#",
    "#...OO...#O.##OOO....O.....#..O....#O...OOO#O.O..#",
    "#.O..##.OO....##.....#.....O.....OO.O..#.#OO#OO.O#",
    "##################################################",
    "",
    "^^<><<^<^^>>^v>v<<><<^vvv<^<<^>^v<<vv>v<>v^<vv^^>^^^^>><^v<v^>v<><<<v^^v^^v^><>^v>^>^>>><v^<vvv^v><vv<><<v<v>^^<vv><^>^>^>>^>vvv<<v<><^v^vvv^v>>^^^vv<<<^^v>vvv>v^<>>vv<v>^<<<>>>><>vv<<^<v><<^>^<^>>vvv<v<^<<v>><^^>v^^<<>v>vv>v^^<^v><^v^^^v<^v>>vvv^v^vv^^v^^<v^<^v>^v>^>v<^^<><v<>^v<^v<>v>^v<<^^<vv^^^<<^v>>^><<vv>><>vv^<<<v<v>>v^^^>^^v^v><v^>^^<^v^vv^^vvv^^<^>>^><^<^><<>^^><v><>>^v<<^<><><^^^v^><<^v^><><>^v^^>>^v^v^>^><^>v^v^>v<>>^vv^v>^<>>^v<>^v^<<^^^vv<^v^>v><^>v><^<>^>^<^><^vvv^vv><><<^<<><>>^<^v<>v^<>v>^^v^^><v>>>v^>>v>vv<^^^<^<<^<^vv^^>^<v>v<<^v>v^v>v<><^<>>vv^<>^<><v>v^vvv<<^v<>v<v>vvv^^<<>^>>>>^>vv>v>><<v<<^^<<vv>>vv>>v>^v^v^v^v^^v>v>>v><v<>v<^>vv>^>^^<^^><>^^>vv><v^v<<^^^^^<^^<v<v><v><vv<<v<v^vv><<^<v<><^>>>^v<^>v<<<v<v^<<^><<^>>>><^>>^<^<>^^v<<^<<v^v^^^^<><^^><<<v<>^vv>^vv^<^^^^^v^>><><vv^>^^<^<>>>v><<>v^v>^>><^^^^v>>>>v^>v>v><>^>>v<<><<v<>vvv>^<>>v<<><<^<><>^<<>>v<>>v>v>><<<vv^^^^^<><<^v<v<<>^<>^<>^<v<<^v<<<v<v>v<^<vv>><>>vv>><<^<^v>^^>v^^^^v>v^v^v^<><^<>^^>v<<><v^^^<v><^^v^<^<v",
    "^>^v^v<>v>^>^vv<v>^v>v><^>^^<^>^^>v^^v^><>><v^^^<v^v^<<<<>><v^>v>vv^<v^vv^<^v<<v<^v>v>v><>v>vvv>^>>^vv^^>>^vvvv>>v><>^^^<>^<v>v>>^v><v><<^<^>v<^v<<^^v<^v<<^>^^<^v>^<^<v>v^v<><><v<<v>^<v<^^<v>v<><v>v>vvvvv>>>v>vv>><^<<>v^>>^v<>>><>vv^<^<v^v>vv<<<v>^^<v^^>vv>vv>^<>>v^<v<<v^<^v>^<^^<v^<<^>><^v^>v^v><v^^><^v^<^>^>vv^vv^<<v<^^>^>v^vv<^>><^<<<>^v<v>^^<^^^>>vv^><^v^<v^^>v>vv^>v<^vv>v<>>^>^v><vv><>^<>^vv^v<^>v^>><vv>^>v>>^>><>>>v<>^<v<<>v^<^<>^>>v><>v^v><<v>v>><vv><<>v<^vv<>^v<><^><^v>^^>v<>v^<>>v>v^><vvvv>^^>v>^^^^<v>v^<v^vv>^>>^<>vvv>>>^^<<<v>^vv>>v><^^vv<v>v^<vv^^^><<^<^>^^^<<<v><v><^>^vv^^><v>^v><>^^^^<>>^>>^<v>>^><<>^>^>^^v>^vvv^^v^^>^>^vvv^<vvv>^vv<>>>^v<v>v<>^vv>v><>vv<>^vv>^<<<<v^v<^<^<<^<^^<>>^<^v^vv>vv<<>^v<^^^^<^^<^v>^<>^>v<>><<<>><><v<v><^<v^>><<v>v>v^<<^v>^^<>^v><<v^^<v^<^^<><v^^^>v<<^^<>v><<>>^^^>v^vv^^^^^v><>^^>v<^>>^v<<v<^^v^v<^<>v<>vvv<v>vv^v<<v>vvv>v<>^^<vv>>v>^>vvv^<^>>v^vv>vvv>v^>^>>vv<v<^<^<vv^v>>^>><><>>^<v<<vv^<<<<<v^vv>vv<>>v<^>><v<v><^v^^^v><v^>>>><<<><>^<<>>^^^<v<<^^>",
    ">^v>vvvv<<><^<^><<>^^>^>v>>><<>>^^^v^^<vv><<v^^><>^<v><>^^vv><v^<<vv^<v><>><^v^><^<v^v>v<>^<>><<^v>^^v>^^>vvvv<><^<^v>^<<>>v^v>>^^^<^<^><<<^v^v<v^<<^<>>v^^^>^v>>v^^v>v<^>>^v^v^<>^><<vvv^^v<^<v^<^><^vv^<><<><>>>^^^<>vv<^>^<>^><^>v<v^<<^>^^v>^<>><^^>^>^>^<^>><><<^<<v<<^v<v>v^v^><v<><<<>^^v><<<<^>>^^>><>vvvv^<<>v>v^^v<>>v><^<>>^v<^^vv^^vv^^>^<><<>^<<^>^>v<><>^<vv>^^^<^^><<<^^>^<>vvv<<^>^v<vvv><v<v><<><<>>>^<^^<vvv^v<<><>vv>><v<><^<<>vvv<>^<<>^v^>^<v<^<v>^<^>>^^>^<<vv<>vvv<>^^>v<v^><v^>^^v>^v><>^^^^v^<>^><^<>v^>^vv<<<>vv>v>^^v>v<^>^vv>>>>^<v>^vv<v^v<^^>v>>>>^<<>^^v<<^v<vv<^^v^^<v<>^^<^vv<<<<v>vv^^^^^<<<><>^v^vv<v<v>^^<<<>>v^<>><<^><><<<>v>>v<v<<^<vv>^^v^v^<><^v<>^<vvv^^<v^v<^v<>^<^>vv<v<<<^><><<v>^<<vv<<>v^<>v>v^^><^<^>>v>^^<^><^<<^^^<^^v^vv<>^><^<^^^^^vv>v^<^^>><^v<^<><<^<>^vv^^<^<v<>^vv^v<^^>^<^>^^>><><<vv<^<vv^^<v<^v^<>v<<v^<^><v^^^^v><v><v>v<^<^><v<v<>><<^>>^>^<<>v>^>^<^^v<^<<vv^>>^<v^>>>v><<<v>>v><<^v>>v>>^vv<<v^>^v^<><><^v>^>^^<v<^^>>v^v<>>v><vv>><><v^v^<vv>^<v^<^^>>^<>v^>^^<vvvv>v><",
    "vv^^^<^<><^^>^><<^<^<><v^<v<vv<<^vv^<v<<<>vvvv^<<^>>>vvvv><<^<^>v^v<vvv<^v>vv^>^><>>vv>v^<^^<>><v<^><<v^><><^v><<^>>>>><v<>^>>>v^^>^><v><><^<^<^v<^>^^<>^<<^^v^><^v<v>>>^<v^<vv<^<v>^^><^v<>>v<>v^^>^^^v^v<>vv^<^>>vv<v^v<>v<>v><v^^>><v^><>v<vv><>^<^^<v<v^^^v^^v><vv><>>v^>v<><v><^<<<vv<>>^<v^^^v>v<>^>v<<>><^^<<<v^<v>>v^>^>^^v<<^vv<>^v>v^vv<<^^^<v^<>v^v<v^>v<<>v><>>><<><>>v>>v<>v^<<v>^vv<>^^>>vv<<<<><<><<vv>^^<>vvv^^v<><v<v^<>^vv>^>^>^><>>vv>^v<<^><v>vv^>^v<<^<v<<v>^><<<^^^^><^>>>>><<^<>><^^vvv^>^><^>^><>>>^<<v^^<vvv<vv^>>>^>>^^>vv^><>>>>>^<>>v<><>>>^<^<v<<^><v<^<>v>>v>>^>>^<<<<<<><^^^^^<v>>>>^^>><^vvv^v>^>^><><<>><>>v>vvvv^v<^vv><v><v^vv>v<<v^>v^<>v<^^>^>>>^vv>v^><^^^>^>^>^v<>v<><v<><^^vv<<^vv>vvv>><>^^^^v<v<vv<>>^^v<>><<vv>^^vvv^<^<v^^<>vvv^<<^v^>>^<^^>v^v<v>>>^v^>^v>v><<v<<<^v^^>vv<^^v^v<<^^<><<<>^<^<<^<^v^<>>^<>^^<<^>v<v^<>^<>>>v>^^^^<>^^v<>>^<^vvvv^v><<^>vvv<><>>v<<<^^v>>vv<>^^<<>><<vv<>>>>><v<^v>^<vvv>v>>>><<>^v<v^><^<v<<^<<>^><^<<v^v>^v<>^<<<<v>>v^<vv<><>^^<^v>^^^<^^>^^v><<<<>>vvv^vv",
    ">>^v^><v<v>>>>vvv<^v^^><>>>vv<>>^^^><>><<^v<v<vv>v^>><v<v<v^<>>^><^^>><^>>^<^<<^^v^^^v^v^<v>^^<v^<v^v<v>><^>>v^>v<v<^><>>v<>v<>^><<^v<>><^^v<<v^<<><^^<v<v><><>^^>^<v^vv>^>^>>vv><^>vv<>>^><><>^v<^^vv<^v^<v^><^^><v<v>^vv<<^>^<<v>^^v<^^>>^<<vvv>v^v<v^<<^>v^<^<v^^<vv><^>^^v>v<^<^>v><^^<><v^v^<<^<<v^v<>^^<><^^>^v>v>vv^<<>^vv>v><>v<vv>v<<vvv<v<vv><vv^v^>>>^^>^<<<^<><v>><^<v^vv^v^v<><v<v^vv>v<^>v>>>>^v<>^>^<v^^^vv>^v><<>^>^v^>><><>v^<><<^>>v<>^><<^^v<><^v>vv^<>vv>^><v>><>v>><^v^>><v<v>^v><>^<>><<>>v^<v>>v<<^v^vv><>^v>^><^vv<v<v^^vv>>>v<^>><^v^>><>>^^^v^><>>v^v<<><><><><^><^>^^v^^<<v<<^<>^^>>v<<v^<^<^>><^>>>v^^v^vvvv><<>^<^^^v<^v<<>v<<^>v^<^><v<><v^v>>v<^^v>>v<<v>v>><^^<^v<>>^<<<<^vvvv^^v^^v<>^>^^<v^<<^^v^>>^>>v^vv<<<<v>vv><<<v><><v>^v<v>^>vv^vv^vv^v<<v^><v>><<<v^^v^<>v^^>^<vvv<^v>vv>vv<>^>^<<><^><>>^<<><>^<v^<v<>vv>^v><v<<v<<vv^v<<>>^^v^^vv>^<v>^^^<^^^<^vv<>><^>^<<<^<^<vv>vvv<v^<>v>><<^^>vv^v<^vv<^>^><^><v^<v<v<^^<<^>v<<^v>^<><^<^>^vv<<^>>^<v>^>v>>vvvvv^><>>^>><>>v<>vv<v<<v<v<^<^><<>><<^^vv^>",
    "vv<vv>^<^v^>v^>v^v>>>>^><v>>>><<^v<<vvv<v<vv^^^><v<^v^>v<^><v^^^^>^^<^^><<>vv<v<v>>^v><>vv<^<^v>v>^^vv^<v>^><^>^^>^^^^><<v<>>^vvvv^><>^v>>^<v>v<>>^<<<v^v>v^v<>^>>^^><><<>>>><v<vv^v^<><v^^>v>^>><<<^^>^<><^<<v>v<<<^>v><^<>v^^<>>><><^v^<^>v>^v>>v<^vv^>^>v<>>><v>^^^<v<>>^v<^><><^v>v<v>v<<<vv>vv<v><<>>>vv^<><^^<v>^>v^vv^<<<<<><<^v<^>v<^<<>^>>^^v>v>^<v>>>^v>><vv<vv>^>>><^vv^v<>v>v>^<<^<^<^>^<v<v<v<v<v<<>^>>>><>vvv^<v>>^<<v<<><><^>^><^<>v^>^>vv<<<^vv>^v<>v>v><>>v>v><>>v^>^<<^>v><vv^>>v>v<v><^>><>>^><^v<v<>>><v<^^<^v^v<^v<v^v^>>^^>^<>^<^vv<v<v>>^>>>>^<^>><v<v^<<<>vv>>^<v^^^v>^>>>vv^^v>>v>v^^<^<<v<v^^<<<>>vv>^^>^<<vv<>^<<<^vv><<>vv<>>>^<v^^^v^<>^<<v>v>>>><^>^v<v<>^>vvv>>v>^^><<<<<^<^>>vv<^^v>^vv>^v^v^>^<v<<<^v<v<>v>v><v><v>>^<^>>^vv^>vvvvvv<^><v<v<>^>vvv<v^v>^v>^<v^>^>><v>vv^>v><<vvv>^v^>v>v<v^>^v<^>v>^v<<<>^>v<<>vv<^>vv<^>v>^<v<^<vvv^>^v<v<vv<^^>>><<>><>v<v<v>^^^>>>^<<>vvvv>^<^v>><>v^<^v>><^v<<v^v^v>vvv>>v^vv<<<vv>v^<^vv>v<>><v^^>><<^><<>^^v^^><><^^>>v<<<<><>^>v^^v<>>>v^v^v><<v<<^>>^v^<<v>v^<v",
    "v^><><<><<vv^^><v<^v^>v>>vv>v>v<<v<^v^>^v^^^><v<<v>>v<vv^^v^vvv>v<<^^>v^v<v>v^^<<vv<><vv^vv>^v^<^>^v><>^^<>>^v>^vv^<^v^^<^v>^><v>vvvvvvv^<v^<v>^>^>^^<>><>><v>>>v<^^v>v>>v<^<>v><vv>>><<v<^<>v>vvv^>^^vv<^><<>v<v>>^>^>^^^><<vv>>^v^>v^^>>v^<>>>>^^>^><^<<>^v<^^<<>^^><<^v>><^v<^^vv^^^<<^><v><<<^<^<><<>><^><^>v>^^vv>^<^v>><<v^vvv^<^<v^^<<v^^<<>>>^^v^^v<<v>v><>>v<<>^v>v^<^^^<>^<v>>v<>^><v>>>^<v^>>vv><>v><>vv<v^^^>>v^^v^>^>^<^^>>^^<<>^>^v^v<v>>^^^<vvv<^<>>>vvv^><>><^^<v^^v<<vv^v><^>>>vv<vv^>><vvvvv>^<v^>v<><vv<>^><<^^^^^v^v<><^<>vvv<><><^v<><^><><^vv^^<^<^vvvv<><><^><vvv>v<<>>^^^<^v^v^<>^<>^>>><^^v^^<^<<>v>^^^^vv>^><^^>>^>vv^>v>v<>^^^^v^^>v>vv^<>v<v<^v^>>><^vvv>>><vvv<^>v^>^v^<<^<^^vv><v<>v<^v>>^<>v^>><>v><^>><>>v>><^v<^^vv>v^<<>^^<><<<>>v^<>v>^v>>v^v^>^>>^^><^><v<<^<>v>^<v^<><vv>v^^<^><^vv<<vvvvv^>>^<v<v>vv<<v^<<>^^vvv^>^v<>^^>^<^>v>^^<v^<<<>vv>>>>^v><^>>>>v^<v><>^v<v><>><^v<>v>^^v^v<^v><<v<<v^v<^<<^vv>>>>v<vvvv^<v<>>^>^vvv^<><^>^vv<<<vv>>v<>^>vv^>v^<<>^v^>^<<^v^^<^<v>>v><v>>^><^><^v>v<>v^v<<<",
    ">^v^^<<>v^v^v>^v>>^^^vv<<>^<^v>^^v>v<^<^vv<><<>>>v<<^<>>^<v^>><<<<<^^<>vvv^>v><>>><vvvv>vvv^>>v<>>^<>^><^><<<^<<<v>v^^^^<v<^><>>^<>v^<>^>>>vvv^^<<v^v<<<^^><v^>^v>><<>v><^v^^vv>v>v^<<<v<vv><v^<v<>>v^^^<vv^^<<>^vv<>>v>^<<>>v<^<v<vv<^^<><v^v^^<><vv>^^^v<>^><>>^<>v^<<<v^<^<>v^<>v^v><<^^v^vv<<<>^<v>^>v<v>^vv<vvvv>>><>v>^<^><v^v<>v^><^>>>>^>^v><>^<^<<>v<vv<>>^v>>^v><<^^vv^><>^<<v>^>v<>^^v^<>vv^v><^v>><>^<><v^^^><^>>^<v<v^^^v^^<v>^^>><><<<>v^vv^>^vv<<>v>v>>v^v^>vv<><v<^>v^^<v>v<^v<<v<v^>>^^>v<^v>>^^<^v><^v^>^^^v^<>v^^^^<><>>v<>><<><><<>>>^>><>>v^<<><vv^<v<v^v>^v^<v<>^v<>v>^<v>^^^v^v<>vv<>^v>^v><^^^^>v^>v<>^vv>>v>^>><v>vv>^<<>v^>^>v^<^^^>>^^<v<>^>>v^v<<vv><^v>>vv<>v<v<^<>v>^><<<^v><>^^>><v^>^>^>>^vvv^v<<>><^<^<v^>>v^^vvv>^^<<v>>^v>v<<vv>v<^<>v<>>^>v<^^^v>>vv>v^^v<^^v>vv<>>v<v>><>v<v<>^>vv>^^<<><<<v>^<^<^^<><><v>v>^^vv^v<v<v><<^<^<>v<><^>^><>v<v^^<v^vv^v>>^v^v<<vv<^v^v>^^v^<<<>v^^<<<v>^><^>>>^<>>^v><><^vvv><vvvv>^^^<><v>vv<^^v>^^^<vvv<^^<v>vvv<<<^^>>^v^^><<<>>^<^>^<^v>>>>v^^>><v<>><^>^^v<vv^>^^",
    "v<>>>vvv<<><<vv^^v^<^<v>>v<vv<v^<<>vvv<<<<^^<<^>>>v<>^<>>vvv><^>>^^<<^>>^>v^><<><<<v^<^v><v^<>>v>>vv<>^>>^v<<vv^<<<v>^<^^^<<<v^^><^>vv>vv<v^<^v^v>v>^>v<v>^^v>^>v>vvv<^>v^v<<^v>>^>v^>v^<^v><v>><vv<^>>vvv<^v^^<<v^<<<^><^^v>>^v<vv<<vv<^^^><v^>vv^vv<<>vv>v<^><<<<>>v^^vvv^^>><^v><<>^v<^><<v^><vvv><>^<vvv<>>><v<><<<><vv>><<^^^v<v>v>^<><>^><v<^<v>>vv<v^^^<vvv<^>^<v>>^v>^>><<<vvvv>>>v^^<>>v>^^><v^><<>>>^^^<vvv^^>vvvv<<^^>^<<v<^^<^v<>>v<^><>^<<>><<>v<v^^<<<<>>^v^vv><><v<^<^>^v^vv^><^v><^<vvv^^v><^vv^><^v<v^^>^vv<>v<v^>>>v<vvv>^><<v^<<v>>v<^<v><<<<<<<>>^^v><v^^>v>>^<v<^^<>^<v>v^>>v>^v<><^v^<<^v^vv<^v><v<^<<^v^<<>><><<<>><^vvv^vv>vv<^><^>vv<>v^<><^<<v>^>v>^^v<><<><v^<^>>>^v<>><v^vvv>^><^v^^^>^<<^<^<v<>v>^^><<^^v^^^^v<<>>^v^<<<><><^^>><>^>>^^>^>v<^^>>^>>v<<vv<v<><><v^<>>v<v<^^>^<vv^<^>^<^v^^<v<>vvv^><^<<^^<v^>>^^^^^v>v<v<>v>><v<^>v^>^><><<><<v^<v<<^<vv<<^v<^>^^<<v<^vvv^^^^<>v<^^>><><^v<>><^<<^<^<^<<><>>v>^>vv>v^^^<^^v>><v<>^>v><^<<vvv^^><><v^<^^^>>vvv^<<^^<^>>>>^v^<>^>>>v>v>v>>v^^><><>^>>><<>^>>>>",
    "<^>^^>>>^>^>>v<v>v>^<><v>^<vvv><^vv>v<>v>^>><^v^^^>>^^<v>><v><>v><>^v<^^>>^vv<v<>^<v>v>^v<<<^^^>v^^v^<<v<>^^^><v>vv<<^^v>v^^<<>^<^^><v<>^<>v<v<>^^><vv^^^>^v>v<>v<<v^<>^vv^v^^>>^<vv<^<<v<>^<>v>>>^^^>v^><vv>^<>vv><<<><<v^v<>^<v>^<v>v^<^<<^^>vv>v>>>v^v<>^>v<>v><<v^v^>^><><^vv<v<>vvv>><<v<><<^>^<^v>vv>^^<<<>^<vv^<^v<<v^<^>v>^>v>vv<v^<vvv><>^v^<^^>>>^>vv><>>^><^><><><v<v^<<v>vv^v>^>v<^v^v>>><<vv<^<v^^^>>^^^^<<<<>^vvvv>>^<vv^v^<<^^<>v^<v<v>><vvv<<^^^v>v>^<^>v>>v<v<^v<vvv<>>v<v<v^<^^<>^<<<v^><^>>>^v^vvv^>v>>v^>>>><^^^^^^<vv^>^<>vvvv^^<<<v^<v<^v><<>^^v<><v>^v^<v<<><>>^v<^v^^^>v^>^<<v^^<<<^^vvv^<v>^^<>^^v^v>^vv>>v^><^^>>>>>v><<^><^>v><vv^<<<^>^^v>v^<<^>^<v>>>>v^^<>><<<v<><^<^<<<<v^^^v^><v>vv^<<><<>>^v><v>^<^>>v^>>>>>v^^>>^<^><v>><^<^<<>vv>v<v><v^<vvv>>v<<>>>v><^v<^<<vv<vv<<^^v<>^<vvv<v><v>v^><^><vv^>^^><^^v^<>>^><^^^>><^<^<^<v<<<><vv<>^<vv<v>v<>v>><>v>><^>>>>><<<v^<^v^^^v<v^v>>v^^<^>v^<>^>>>><^^^>vv^<^v>^>^^>^v^><v>^^^<<>><^<><^^<v>v<v<><<<<<>^>>>^<<>>^vvv<>v><^<v>v^>^<<^<<><>>^<<^v<<^>>>>^>v>v",
    "v<><<^v<>><<<^>vv^<^^^v^^^v^^^<v^>v^^^^>v<><>vv>^>^<vv<^v>v^>vv^v^v>^<<vv^<>>v<<^<>>>^><vv>><v^><<vv>><^>^^<vv^><vv>><^vv^^^>^v^<>^^<>^><>^>>^>v<><^vv><<^>v^<<^^<v><v><<v>>^^v<><^^^>^<<^vv><>>^v>v^v<vv>v^<>>>^v^<<<^^>v^v<<>>><vv^<v^^^>^^^v^<>v^v>>^^>>v<^^vv^>>>^>>v<>^^v<v>>>>^<<^^<v^<><^>^<^v<vv<^><^>^v^^><v><<<<>>^v>>^^>^<v^<<v^<>vvv>><<<vvv<^v<v<v^<v^<^>^^>^>>v>vvv<v^<>v^^>^<^>^<<<>^v<<><v^v<^^vv><v^<^>v^^v^v^v<<^<><vv^>^<v^^^>>^<>v<v>><^>^<>>v>v<v>>^^vv><<v<>^>^v^<><<vvv<<<<v^>^<vv<<^^v^><<v<^^^<^vv<<v>v<>>>v<>^v<<>^<<><>>^vvv>^<<^>v>^vv^<<<<vv><v<>vv^>^vv^vvvvv^>>^^><v<<>vv>vv>^<^><vv<v>^^<^<v^<vvv>>^>v>><vv><><><v>vv>^<^vv^v<vv>^^vvv<v>^>>>v<v<<^^v>v><^^<v>><>^v<<v><^v^<vvvv^<^^^<<>vvvv>>v<v<>>>v>^^<>v>v>^<<>^v><v>v<^<>v<v<<vv^^<>v<v^^v<v<<^^^^>>>^>v<><>><^^^>^v<v<><<v<<^^v<<<v^vv<vv>><>><>^<^<^<<^>>v<^<v<>v<<vvv^^<v>v>^v<^v>^><<^>^<<<>>>>vv^^>v>vv^v^<>v^v^<^v<v<^v^><^^<<>>><>v>^>^<v^vv^v>^>^<>>><vvv^v<vv<v<^^v>^^<>^>^<vv^><<>^^><v<<<>v>v<>^<<>>>^v<<^vv>v><>^<^>^>>v^<<>><<>><v<^<v",
    "<<^<<v^vvv^^^>><v^^<^^v^vvvvv<^><v^^><<<>^<<^^<v>>vv>>^<>^>>>^<>>^^^<<>>^^>v^v>v>^v<v<>v^v^><v^><>>vv<v<<><<^v>^^v^>>>^>^v^v^>v<v<vv^<<>v<v<v^^^^>^v^^<^^vvv^<v<v^^><<>>^>>^<v^<v<^<<^<><v^^<>v^^<<>^>^^><vvv^><^vv^^<v^v^^>v^v^<v><<<^>^>>v><v^v>v><v><v>^<v^v<^<<<^<vv<>><vvvvv>^<^vv^^>v><<^^<><^<<^<vv^v><>v^><^^><^v><><v><>^v>^^>v^^>^><v^<v^<^vv<v^^>v^>^^v<<v^v^<vv^^<vv>v<>v^vv<v>v>>vv<><v<<vv^^^v^<<^<v^v<><v>vv><<^<v<^^<>><<v^^v^<v<<<>v>vvv><>^>>>>>>>vv<v^<^>^v^^<^<vv<>>v>>>^v^^<^v^^v^^^vv<>^^^<>v^>vvvvv><<v<v^v>^<v<>><^vv>^>vv^><^<^^v><^v^<v^vv^v<>v<v><^>>^vv<><>^v<>v^v^vvvv<<vvv<>>>v<v>^v^>^>^v<^v<^<<v<<^^^>>^>v<><v<<<v>>v^<v>^>>^^^vv^<<^<vv<vv><>v<<^><^^vv><^vv>>^<<vv<<vv<>vvv<^<>^<v>^^^^>>><^v>>^><<^<<^>v>^<<>>^^^^^v<<^>^^>^>>vv>vv>>^vv<><v<v><<^<^^^vv^vv>v^>^><>>v^^<<<v^><v^>^v^^v<<v>^>>>>^^vv><<v>>^^v^^<<>^<><^>^^<>^v^v^><^<>>v^^vv<v>v^>^^vv>>vv>^<v<>^^><<>>v^<<^^<>>>^^<>v><^<><>^><v>>><^^>><<<^^^^<<>^v<v>^><<vvv^>v<^^<^<>v^<v<v^>>>>^<<<v^>^><><^>^<>>v<^^^v^^^<<^v^>^v<v<^>>^v<^<<^v<",
    ">>><vvv>v>>v>vvv<^^>^<v^>>^^>>^<>^<<^>^<>v^<^>><>^<^^v^v>v<<>v<^^^><>v>>^^v>>^<<v^<v^^<><>^v<v^<^v>>^><^<<>>>^^^^>v>v<<vv<<>>>>^><v>^>v>>>^<^^v<>vvv<>>>><^>v^>^<>vv>>vv^<v><v^v<<^<>^>>^v>^<<^v>^vv><><>>^>^^vv<<v^^^>vv<><v>^v>^>><v^v<<>v<v<<<<<^^^<^^<<<>v><^><v^^<v<>^v<>v^v^>vv>^^><<v<<>>v<><<>v>>v>><vv^<><v<><v>v^<^>v>>>>^^v^<v>v>^<>v>vv^<><^<>v>^<>^<^>vvv<v^vv<^^vv^^vvv^v<v>^v>>vv<><v<<><<<^<<^^vvv^^^><vv<>v<<^><^>v^><><vv>v<vvv<>v<^>>><<<<<^v><<v><><vvvv<^^^^v>><><>><^<><<vv^>v<v^><<<v<>>v>><>vv<><<^^<>^^>v^<^<<>^<v<<>><v^<<>>><vv^<<<<^v>>^<<<^<v<v<<<^^<v>><^>v^v>^^>v><^<v^v<<>^<>^^<vv<^vv<<>>>^<<<>v>>^<v<^<v<>>^^><<<^^^^<^^><^^^v<^>^^<^v^vvvv<>>^vv^^^^vv<>v^v^<v^v><v>^^<><><vv^<>^<^>>>>>vv>>>^^>>^>><^^<<vvv><^<v^><^v^v^>^v^>><v^^vv><><^v>>^<<>><^v>^>^v>vv>^<v<>>^^<^^<vvv>^>^v^v<^<>v<v^>v>v>>v^^v^^v>>^<><<v^v<v^>>^^v>^^>><>^v^<^^v>^vv^<v>^>>^>v^>><>v<>><><v>^>^^>>>^><<v>v<<>^>>>v>>^>vvvvv><v^^^v<<^>>^^><vvv^<^<<vv>>v^>>vv^<^^^<^<v^<<^v<><^>^v<v<vv>vv<v<>^^<><v<^>>v^v>>v<<v>>^^<^vv^>>",
    "v^>>>v><<v^<>><v^vv>>v<v>^^>>v^<>><<<v><>^<^<><^v>v<>v^<<<<<v^><<v^v<v<>^<v>v^<>>>><<v^^^^<^>v<<>^<vv<^<>>>>^>>^^^<^<>^vv<v^>v^>^v>v^v^^v^^<v^^^vv^<<^^v<v<>^^v<^^<<>v<v>^vv^<v^v>^^>v<<<>^vv>v<v>><>^^<<v^^vvvv<<^<>v^<>v>vv>>^>^vv<vv^v<>^>^v^^><>^vvv>v^v^<^>v^<v<<<>><^^<v><v^><<<v^^^>>^^<vv<v^>>^>v>>^^>^^>><>^>><><v^vv>>>>v^v^<^^><vv^><vvv><><>v<>^^v^><^^^<v<^<^v^^><^>><v<v^v<>^>>v<<v<<<^><^v>^v<>><^v><>><>>^^<>>v^><>^><<>^v><<>^^^<<v^<^<<^<<<><^^<<<<^v<vvv<vv^><vv^<^^<>^><vv^vv^vv^>^vv^><v^<^<^^vv><<<<>v^>v^<^^<>vv<vv>>v><^<<^vv>v^>^<>v>>>>>^<><^^v<v>^v^vv<^>>v^><v^v^vvv^>^>^><<<^<<>v<>vv>>>^<vvv>vv^<^^vv<>vv<v^>^>^v<<v^<^<^><>v<<v^^v>>v>^<v^^>^v^<>><^v^v^>>vv>^vv^<^<^<>v>^v<v^v>>^^vv^^v><vvv<v^><^>><<<^^<v><^^<^v<><v<<^vv<^^^<v<v^vv^<<^v^^>>v^<^^^<vv><<><v^>vv>^>v^^^^^^v>v^<v<<vv<>>v><>><>><<^<>^v<^v^^>>>v>v<<>><<^><^><><>^v><>v>>v^<vv>^vv<<>vv^><<^^v^vv^v>><<>><v^v^^>v>>><v>>^>>v<<<><>>v<>>v>vv^^<^v<>^v>v>>v>^>>>>^v>><^<><><^><<<<^^^^><<^<v>^^>^<<v^v^>v<<<v>>v^vv^v^^^<^<>><vv>v><>v^>v",
    "^^^>>><<v^v><v^<v^v<^<^v>^v>v<v>^>^v><^<<v<>^<><<v<<>v>>>>><v<<^><>vv^<^<<v>^>^^<^^>>v><<>^><<>>>>><>vv^^>^>>>v>^^v>^<<>><^<^<^><v>>><>v<vv<>^v><>>>v<v>v^>v><<><^v^v<><><v>>^vv^^<^vv<^vvvv<><v<^<<^>>>>><^^<>^>^<>v<<v^<>v^v^><>><^v<<vv>><^^vv>^^>vv<^>v^v>>>^v><<>>vv^>>^>^<^v><<^^<v^^v<vv<^><^^^^>><>^^<>vv^vv^^v^vv>>v^>^v<<>^>><^>><><<<>v>^v>^v>v>v^v<<^^>v><v^>^v<>>><<v>vv^>^^v<>^<^^^v>>v><v>^<<^v<>>>^<<<^<^<<<^>v<^<^v><^^<><v^vv^^^>v^v<^><vvv><v<><^>v^v><<>>^^^v><>v^^<<<^vv<><vv^<v<^v^^><v^>v<><v<>>^>vv>^^<><<vv<<v<v^<>><v^>v><>v<>^<^v<v<<><>v^<><^>><v^>v<>>^^<^^vv<>^^^v^<^v><>^vv><^v<>^^>><v^>^^^v^>>vv>><>>^vvvv<vv^><<v<^>^^^><><><vv^>><<^>vv<^v><>^><<^v^^<^<<>v><<^v^^<^^v<^v^v^v^>v^^^>>^>^>vv<><v^^<<v^^>^^^^><^^v<^>vvv^<^^>^<^<v>^><v><v><<^v>v<<>^<>v>^^v>v^vvv<^>^<v>v<v>v^v><<^>>vv^v<<vv^vv<vv>^>vv><>v^^>>>vv>>v>^v^<^v^v>v^><^><<^<>v><<^v<<<>>vvvv>^>>>vv>>vv<v<<vv>^><^>v>^<>^v^v^^>>v^>^^>^<v<<^<<v^v>^^>>v<^>>v<><>vvv<<>^^vv<v<<^v<v<v^>>v^<v^vv><<>>>^>v>>v^>><v<v>^><^>vvv>><>>>>v<^v^v<",
    "^>^>^^<^<vv>v<^>^<<^v<><>>>>v^^>^<^<<v^<^^<v^v^^v><vv<^>^^v>v^vv><^>><vv^v^vv^<<<><v>v<^^vvv^<^^^>vv<^<vv><>v<^^v><<v<<^v<^^>>><v^^v><vv^^v>><v><>>>v>vv^><^<<>><<^<><^^<v^^^vv^^v^^>><><^<>v>v<>v<>v<^^<v<<v<<<<><vv^>v>^v^>^vv^<>>>v^v^<v>vv^vv>^^<>v>^>^>>v>^^><>>^v>v<<<>v<>><^^^v<<^^vvv^>>^^><><><<>>>>^>^><>v>>>>v>><^v<v><^vvv><^>>^>v>^vv^>>>^vvv<v>vv>^v>><<>v>^^v<<><^vv^vvv^^><<<^><v^<<v^v>vvv>^>^^^<v^v<v<^>v<^v>vv><v^<><<^<<^<>^v<>v>>><>v>^<>>^>v<v^^<^^<>vv<^<><^v^><>vv>v>^<v^><<>v><>^>v>v<><^>^vv>v^^><^>v^^^>>vv>vv<v<>^>v>vvv<><^<>^<v<<^><<<v<<>^<^v^^<<v<vvv<>><<<v>v>>v>^>^v<><vv<vv^^>^<<v>v<^<vv>><^<>^^v<>v<<>>v>^>^v^^^<v<><<>v>>^<^<>^v>vv>v<^<^^><^<><>v^<^v>>>^vv<>^v^<<<<v<><>vv>v<v<<^<>v>^<>>^v>v<>v>^<^v><<v^^<<>vv^>><v<><^v^vv^^^vv><>v^vv<<v<>>>v><<><<><v^<v^><<>>v^>>>>v<>>^vv^>>vv>>^<>><<^<><^<><>v^^>^v>vv^^<v<v^>>v<>v>>><v<>v<^^><v><v^>v^<>v^>>v<v<vvv>^<v<>vvv^vv^v><v^>v><^>>v^<>^v<>v<^vv^v><^<><^><<^>>>^>^v<<<v>>vv^^<>^>>^<>vv^>vv^v<^<v<v<>>v>v>><^<^>vv<<<<v><^><vv^>^v<<<^><<>^",
    "^<^v^>^^^>>>vv<<<vvv>^^v<v^><^<v^^<<<vvv^<v<<<>><<>vv>vv>v<>><v^v>>>>^<vv<^>v>>v^v>v<>^vv>><v^v^<^<>><^v>v<>>>v^v>v>><v<v><v^v<>v<v>>>vvvv^vv<^^<<<vv^vv>>v^><<^<v<v>vv<^^<><<vvv>^v^^>>>>^^<<<^<<^>v^^^^>v><<<v>^^>vv^vv^>>v^^<^><v<^v^>^<v<^<v<>vvvv^v^v><^v^vv<vv<^v>v>v>v^^^vv^><vvv<v^^<^^<>vv^>><v^<v<<v<v>^><^<>>v>^<^vvv>vv>^v^v^<>^<<v><<><<<^vv^<>v><^<<^^>vvvv><v<<^vv^^>>><<>><>>>><>><v^>^<v<vv^v<<^v<<<^^v^<<v<^>><<>v><^vv>vv<^>v^<>^v^>><^^>>^><>>^>v>^<^^^v>vvv^><<<^v^<v<>>v<<vv<^^^<>v>>v<^<vvv<^<^v^>v<>>>>^^^^vv^^^^>v><<vv<<<<v><>><vv^>v>^<vv<^<^v>>><v^<vv^>vv<><<v<>v>>v^<^^>v^>>>v<><v<>^^<<^<>>^v>>>>^<><^^<<<>>vv^<<>v^>v<vv>vv^v<^v<^<v><v<v^<><>>v^><v<>v<<>>v<vv^>vvvv<>^vv>^vv><^^<<>>>><^<^<>v^>^^><><vv><v<<<^>v<^^>>v<^>v>>^<<>^<><v^v<<v^><^^<v><><>>>^<<^^><<v>><^<>^^^^<><<v>^vv<<vv<v^v><>>^<<v>>^v<^<<<<<><>^^^>^<>vv^^v>^^^<^vv><^>><>v<<>^>>>^><<^<<<>><>^v<>^^^v^v><^^vv^vvv<<v^>>>>^v>v>v<<>v<><>^vv^<^<>vv>>vv^<<vvv<v<<^<^<^<v>><>^>vvv^<v<><^^^<v<<>>v><>v^vvv^^<vv^<v^<<<vvvvv^^^>v<v>>>",
    "<^^^<vv<><<<>^^>>^v>^<^>><>^<>^<^^>><<<^><>>v><v>^v><>><><vvv<^<<^<^<><<><^v>^v>>>>^^^^^v^<<<^v^>^v^><<><<<>^><<<>^v<^>vv^^v<^<<<<^<^v^><v<v^^^^vv^<^<>v>>><><<<^>^vv><vv>^v^><<>^^<<v>>vv>^^>v>>^v^^<^v<>><^v^^v<^<>v>^v^^^<<>><vv^^v^v>v<^^<v<^v>><>^<^<^<^^v^>vv^<^v>^v<<^^<v^<v>>>>>v^<^<>v^>^>v^^<^vv^v>v^^v^<v>>vv^<^<<^v>vv^vv<<v><^>^<^^^<<^><>vv>><<<><<<^v><<<<v^<<^<>vvv^<^<>v>>^^vv<><>><^<^vvv<^^>>vvv<^<<v>^^^^v<^v<^<<<<<^<v<^>^vv><v^<^v<v>v>v^^^>v^<v^>>>v^>><<>>>><><<<>>>><^v>v^><^><<^<<^v<vv<>vv>>>>v><><>v<v><v>^<v^>>v>v^^vv^<<^>^<^v>^^<v<^<^v<>v>v>vvv>v>v><<<>vv^>^^v<^^v^<^^v>v>v<<<v>vv>^<vv^^v<^<v>v^v>><<v><>^^v>>v>>vv^><^^>vvvv^v^v^^<>>v^<<<^vv<><v<<v^>^v^>><vv<v^^v>v>v>><>><>><v>v^<^>v^<<<^<<>><v<v^v^^>v<>>>><v<>^<><<v^^<<><<^<^v<vv<>v^v<^<^<<<^vv><v>>>>v>>>v<><<^^<v>^v>^vv^>><>>^><<^>><^^v^<^<<^><v^>v>v>>vvv^^vv^^v<v^v<>^v><<^v>>>><<v^<><vv>^v><^^^^<<<^>vv><<<><vv<^>>v^<vv<<v><^<^>v^<>^><^vvvv^^>v<<<>v^<^<v<<<>v>^<^^^>^v<v^>v<vv<<vv<>v><^<v>v<^<v<<><v<<^<>><^^>>>v>^^>>^^v^<v^<vv<",
    ">^^^^v^v^<v^>>^<<v<><^<v>^<>>><>v<v>^v<<^>^^^^vv<><>vv^^^<>^>v^^<^v<>v>>>^<vvv<vvv<<^<>>^^<^<>v^<<^v^<>v^<><<vv<<<<<^>^^^><v^<<^><vv<^v^>>vv^^<>^^v^^>>^>>v>^>>^<^v>^^v>v><<v<<<<^><v>^>>v^^>^><<v><vv^>^><v<v<<^<<<<^^v>v<v<^<<<^>>>>v^>>>^<<^>><>><^^^>>><<vv<v^<v^v>><^v><><<>v^<<>vvv^v>>>v^^^v<vvvv><<vv^>>v<v>^vv><vv<><<^>>^<>>v<v^>^<^v>>vv>v<>^>v>vv^v><><v<v^v><vv<>^<>^<v^<^vvv>v<>vv<<^v><vvv<v^^v^^>^v>v><>^vvv^^><^^<v<><>^>>^><vv^^vvv<>vv<^vvv<>>v^<>v>^<<^>^v^><>>>>>^>v^>^v>v<<><>v^v<>>v^^^><vvvv<<v^v>vv<v^^>^<^><v^>^<<v>v^^<<>>v>vv^^^vvvv^>^^<<<<>v<<>^v>^<^<v>^v^^>v^><<vv>^<<v^<vvv^<>>vv^^v<><^><<>^v^^<>vvv^<^v>^<^<<>^<>vv<><<<^^>>>>>><^<>>v^^vv<^>v^>^<vv>^<<>>^>>^<^v^>^v^^<^^>>v^<<v^<<<v<v<<^<<>v<^v>^v^<v><^<<^vv>^<<<>v^<>^v>v^v>^<>^^<v^^>>^v^v><<^>^^^^v<><^v<<><>v^>^>>v^<><>v^>>^v<^^vvv^<v><><^^^v>v<<v>v^vv>^>^<v<>>v<><v^^^^v>v<>>^<>^^>>v<^^>^vv^^<<^<v><^^<><<^v^^>>v<^v<<<v>^<^>vv>><^<vv<>vvv<<><<<<><<<^<<^>><<v<^vv^<^<<^vv^^<^^^>>^^>vv^v<vvvv<^v<>v^>^<<><<><<><<>^^<v><<^>v^>>^<^>>>>",
    "v^vv<>v^<><^<>>^<<<^>^^^<>>v<<<vv^><v<<<>v<vvv^>><<^>v<v^v><^v>>vv^^>>>^v^^v^^<^>v^vvvvvv>^^vv><^>>^^<<^^>v<^><>v>v^><>v^>^>><>>>^^><^>^<vv>>><vv^vvvvv>>>v<v<^<<v<v<v<<^<<v<v>vv><<^<<<v<<>vv^><<v^<^vvv>v^<<v>^v^>>^>^<vv^<<v<v^^^^<<<>v<^>v^>^v^>>^><^><v<<^^^^v>>^><><<<<v>><<vv^^><v^<>^<vv<^^<^<^><<<^^<^<v<^<^><<<v^vvvv>^^vv^v>v^v^^<>vv^<v^>^v^v<<v^<<^>v><^<>^<<^^<^v>^vv>>v<v<v>^><>v^<v<>v^v><>vvv^^v^<><>v<vv><v<v<vvvvv<v^^><>^^>^<^<>>^vv>^v>^v^<<>v>><<><><<^^<>^<>v>v>^v<<v<v>>v^>v<<^vv^>><v<>^>><<vv>v<^>^^v^<^<<><>vv<v><v<^v>^>v>><<^v>><<v<<>^>^>v>v>>^v^v^><<><>^^>^v>^<>><<>^>vv><v>vv<^<<>v<^<<^<<^>>^v<>^>>^>^^^>v>>^<^^^v^v^<v^^vv<<>v><^>><><vvv^<^<^vv>>v<>^v<<^^><v^v^>v><^<^<^^<>vv>>^<vv^^><v<<^^^vv<><v^<v<>v<v^v><<>^^>^vvv^v>v^^><<<><^^^<>^^v^^^>vv<>>>v>^<>v><^><<<<^><><^v^<<v^v<><v^^<<^^^><<v^v<<v^v<vv>><v<v<^><^><v^>^<v><<<^>v^^^><>vv^<>^v>>>v<>><^>>vv^>v^^<v<v^^<v<>><^>v^><v^<vv<<>vv>^^><><><>><<<><<<vv>^^^>^<>^<<^><>^<<<v<<>^vv<vvv><^^><v^<^v>>^^>v<>v>>><^<v<^<<<^<>>>vv^><^<v^^<^v",
]

DIRECTIONS = [ '<': [-1, 0], '>': [1, 0], '^': [0, -1], 'v': [0, 1] ]
floor = []

def main(input) {
    printf "\033[2J"
    moves = ''
    start_x = start_y = null
    input.eachWithIndex { line, y ->
        if (line.length() > 0 && line[0] == '#') {
            if (line.indexOf('@') != -1) {
                start_x = line.indexOf('@')
                start_y = floor.size()
            }
            floor.add(line.toCharArray())
        } else {
            moves += line
        }
    }
    make_moves(start_x, start_y, moves)
    score('O')
}

def make_moves(pos_x, pos_y, moves) {
    for (move in moves) {
        dir_x = DIRECTIONS[move][0]
        dir_y = DIRECTIONS[move][1]
        if (push(pos_x, pos_y, dir_x, dir_y)) {
            pos_x += dir_x
            pos_y += dir_y
        }
    }
}

def push(pos_x, pos_y, dir_x, dir_y) {
    def next_x = pos_x + dir_x
    def next_y = pos_y + dir_y
    def next_char = get(next_x, next_y)
    if (next_char == '.') {
        move(pos_x, pos_y, next_x, next_y)
        return true
    } else if (next_char == 'O') {
        push(next_x, next_y, dir_x, dir_y)
        if (get(next_x, next_y) == '.') {
            move(pos_x, pos_y, next_x, next_y)
            return true
        }
    }
    false
}

def move(pos_x, pos_y, next_x, next_y) {
    set(next_x, next_y, get(pos_x, pos_y))
    set(pos_x, pos_y, '.')
}

def get(pos_x, pos_y) {
    "" + floor[pos_y][pos_x]
}

def set(pos_x, pos_y, value) {
    floor[pos_y][pos_x] = value[0]
}

def score(box) {
    result = 0
    floor.eachWithIndex { line, y ->
        floor[y].eachWithIndex { ch, x ->
            if (ch == box) {
                result += 100 * y + x
            }
        }
    }
    result
}

assert main(PUZZLE_INPUT) == 1511865
println 'ok'
