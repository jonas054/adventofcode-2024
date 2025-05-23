use std::collections::HashSet;

const EXAMPLE: &[&str] = &[
    "....#.....",
    ".........#",
    "..........",
    "..#.......",
    ".......#..",
    "..........",
    ".#..^.....",
    "........#.",
    "#.........",
    "......#...",
];

const INPUT: &[&str] = &[
    "....#...................................#...............#.................#.......#...#...........................................",
    ".........................#.........#....................................#...........................#......##..............##...#.",
    ".....................................................................#.........................................#..#...............",
    ".............#........#...............................................................................#......................#....",
    "....#.#.................................#......................................#...#..#..........#....#.....#.............#.......",
    "....................#.......#..............#.......#.#.............................#......................................#.......",
    "..............................................................................................#......#....................#.......",
    ".........#.#..#...............................#........#.#........................................................#..............#",
    "....#...........#.......#.......#....#...#....#..........#..........#......#...#................#.........................#.......",
    ".......#...........................................................................................#.................#...........#",
    "..................#.#....#..............................#....................#.................#....#..........#..........#.......",
    "...#...............#...................................................#................#.........................................",
    ".................#..#.#.............#.#...................................#......................#....#..........#................",
    ".#..................#........................#..........#...........................#.......#......................#.#............",
    "......#...........................................#.....#.....#...........#...........................#..............#............",
    ".........#...............................#.............................#.#.......................................................#",
    "...#.........#.#........................#...#..............................................#...#...............#...#..#...........",
    "..............................#.....................................#................#..........................#.........##......",
    "..........#...........#.....#......#......#..............................#.....#......................................#...........",
    "..........................#....#.........................................................#..................#...#.........#.......",
    "......................................#...........#.........#...............................#.............#...............#.......",
    ".......................#........#.#....#...#...#................................................................#......#..........",
    "......................#...............#................#..#.#...........#...#.......................#.........#.........#..#......",
    "....#.................#..........#............#....#..............................................................#.#.............",
    ".........................................................................................................................#...##...",
    ".....................#.......#................................................##.............#........#........................#..",
    "........................#..#.....#.#...............#.......#.................#.............................................#.#....",
    "......................................................................................#..#.............................#..........",
    "..#........................................................#..........................#..............#.#.....................#....",
    "...#...................#............#...#.....#....#..................................#.......................#...................",
    "...#...........#..............#............................................................#....#.....#.....................#.....",
    "........................#..............#...................#.....#..#.............................................................",
    ".....#....................#....................##..........#..............#......#...............#..........#.....#..........##...",
    "....#.......#..........................................................#....................................#.#..................#",
    "#......#.#.................................#........................................................................#.........#...",
    "...............................#......#......................#....................................................................",
    "..............#..........................#....................................#..........#.............#..........................",
    ".....#........#....#.........................#..#.................#.#.................#...........................................",
    ".................#..................#.#................................#..#..................................#......#.............",
    "...........................#.......................................................#...................#............#.............",
    ".....................#.........#..#..........................#..................................#........#........................",
    "..#................................................#.#.................................#.#..........#.....#......................#",
    "..........................................................................#..................................................#.#..",
    "..................................#..........................................#......................#.............................",
    ".......#...............#..............................................#......................................................#....",
    "..........................................^....................#..................................................................",
    ".........#.........#.........................................................................................#......#....#........",
    ".........#.........#..............................................................................................................",
    "........#....#......................#...............#...........#..................#...........................................##.",
    "......#............#...........#................................................................#.......#.........................",
    "#.............................#..............................................................#..............#.....................",
    "...................................#...........#...................................................#........#..........#..........",
    "....#.....................................................................................................#...........#......#....",
    "....................................................#....#...................................#....................................",
    "............#........#............................#..........#.............................#.....#..#.#...........................",
    "...........#.................................................................#.............#......................................",
    "....#.........................................#.#.......#...............#...........................#............##...............",
    "..................#..............#...#........................................................................#....#...........#..",
    ".....................#.....#...#.....#.............#..............#...#...................................#.......................",
    ".#...#.....#.............................................#...........#....#.......................................................",
    ".#.....#.............................#................#......................#........................#.........................#.",
    "......................#.........................................#.............................................#.................#.",
    "...#...#....................#.................................................................#............#....#.......#.........",
    "...........#......#...............................#.......#......#........#..........#...........................................#",
    "......................#....#..............##...........................................................#..........#...............",
    ".#......#.....................................................................#..#....#.....................#.....................",
    "....##....#...#.........#.............................#.........#...................#.............#....#................#.........",
    "..................................................................#...............................#...............................",
    "....#.................#.#.........................................................................................................",
    "........................#..........................#...........#...................................#.#.......#....................",
    "...........#.....................................................................................#...............................#",
    "...........................................#..................................#...................................................",
    ".....#.........#......#..........#.........#.................................................................................#....",
    "....#.....................#....#..#.........................................................................#..#..................",
    "........................##..#........................#...#.........#.................#......................#..#....#.............",
    ".............#................#.......#........#............................................................#......#..............",
    "#....#................................#.............#..........#........#.....#...#..........##.....................#.............",
    "......#...#......#..........................................................................................#....#..#.........#...",
    "#.................#..............##....#........................#....#...........................................#..........#.#...",
    "........................#.#..#........................................#.............................................##............",
    "..........#.........#.........................................................................................##..................",
    "....#....#...........#.................#......................#........................#...#....................................#.",
    ".......#..................................#..................#...................#...............................#.....#.....#....",
    "#................................#...........#................##...#............#.................................................",
    ".............................#...#....................................#...................................#...#..........#...#....",
    ".#......#.........#...#.......#.................##....#..................................................#...#....................",
    "...........#........................................................................................................#.............",
    "......................................#......#..........#.....#.....................#...................#.#.................#.....",
    ".....................................#............#................................................................##.............",
    ".......................................#....................#...........................................##..#.....................",
    "..........................#.................................................................................#....................#",
    "...........................................................#............#.........#..#....#.#............#.....#..................",
    "....#.....................................#...........................................#........#.....................#............",
    ".............#.............#................#..........................#......................#..........................#........",
    ".........#.................#......#............#....#.#.............................#.......##......................#.#.......#...",
    "..............................................................................................................#...................",
    "#...#...............................................#...................#........................#...............#................",
    ".......#...#.......#..#..#..#..........#..........................................................................................",
    "......#.##....................#......#........#............#................#.............#...................#............#......",
    ".....#..#......#.......................#..............................#...............................#...........................",
    ".#.................................#......#..............................................#........................................",
    "....#...........................#..#........#...............#..#.......................................#......##.#.........#......",
    "..................................#..................#......................#.....................#.......#.....................#.",
    ".........#....................#....#...............................................#...................................#..........",
    ".........................................................#...#...............##..#...............................................#",
    ".#..#.............#.............#....................................#....................#.....#..#..........................#...",
    ".................#.........................#..#........................................#.................................#........",
    ".....................#....#................................#......#...............................................................",
    "...............#..........................#...........#.............................................................#.........#...",
    "...........##.......#................#..............................#..........................#....##.....#...................#..",
    "......................#........#........#.........#..................................................##..#........................",
    "....#........................#......................#.#..................#....#..................#.....................#..........",
    ".................#......#...#...................................#...............#....#.........#............................#.....",
    "#.................#...............................#......#..#..............................................###...#.......#........",
    "..........#...........#..........................................................................................................#",
    ".......................#......................................#.................#.......#........#................................",
    "..#.......#..#.............................................................................................................#......",
    "#.........#......#........................#.#..............................................#...................##.................",
    "...#....#.....................................#...................................................................................",
    ".....................#.....................................................................#........................#.....#.......",
    ".....#..#...............................................................##......#.#......#..#.#.......#........................#..",
    ".......#..........#....................................#.........#.................#.................#.....................#......",
    "..............##.................................................#................#.........#.#............#........#............#",
    ".....................#.............#....................#...#.................#.........#........#................................",
    ".............#...........................................#........................................................................",
    ".....#...#.............#..............#..............#..................................................................#......#..",
    ".....##...................................##.....#.....#..#.........#...............#..........#.....#............#.#...........#.",
    "....#..................#.........#....................#....................#...#....#..............##............#..............#.",
    "..................#..........#.#.....................................#....#..............#.......#.....#...............#......#..#",
    "..............#.........#.............................................................................................#...........",
];

fn main() {
    let input = INPUT;
    let mut positions = HashSet::new();

    let mut start_x: i32 = 0;
    let mut start_y: i32 = 0;
    for y in 0..input.len() {
        match input[y].find('^') {
            None => {}
            Some(pos) => {
                start_x = pos as i32;
                start_y = y as i32;
            }
        }
    }
    let mut pos_x = start_x;
    let mut pos_y = start_y;
    let mut dir_x: i32 = 0;
    let mut dir_y: i32 = -1;
    while is_within(pos_x, pos_y, input) {
        positions.insert(1000 * pos_y + pos_x);
        let next_x = pos_x + dir_x;
        let next_y = pos_y + dir_y;
        if is_within(next_x, next_y, input) && char_is(next_x, next_y, '#', input) {
            let tmp = dir_x;
            dir_x = -dir_y;
            dir_y = tmp;
        }
        pos_x += dir_x;
        pos_y += dir_y;
    }
    println!("{}", positions.len());
}

fn is_within(pos_x: i32, pos_y: i32, input: &[&str]) -> bool {
    return pos_x > -1 && pos_x < input[0].len() as i32 &&
        pos_y > -1 && pos_y < input.len() as i32;
}

fn char_is(next_x: i32, next_y: i32, ch: char, input: &[&str]) -> bool {
    return input[next_y as usize].as_bytes()[next_x as usize] as char == ch;
}
