use std::collections::HashSet;

// const INPUT: &[&str] = &[
//     "....#.....",
//     ".........#",
//     "..........",
//     "..#.......",
//     ".......#..",
//     "..........",
//     ".#..^.....",
//     "........#.",
//     "#.........",
//     "......#...",
// ];

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
    let mut start_x = 0;
    let mut start_y = 0;
    for y in 0..INPUT.len() {
        match INPUT[y].find('^') {
            None => {}
            Some(pos) => {
                start_x = pos as i32;
                start_y = y as i32;
            }
        }
    }
    let positions = run_guard(start_x, start_y, -1, -1);
    let mut loops = 0;
    for key in &positions {
        if is_loop(start_x, start_y, key / 1000, key % 1000) {
            loops += 1;
        }
    }
    println!("Out of {} possible positions, {} obstacles cause an infinite loop", positions.len(), loops);
}

fn is_loop(start_x: i32, start_y: i32, blocker_x: i32, blocker_y: i32) -> bool {
    return run_guard(start_x, start_y, blocker_x, blocker_y).len() == 0;
}

// Returns, as an unordered set of positions, the path the guard walks before exiting the matrix.
// If a loop detected, the function returns an empty set.
fn run_guard(mut x: i32, mut y: i32, blocker_x: i32, blocker_y: i32) -> HashSet<i32> {
    let mut positions = HashSet::new();
    let mut positions_with_direction = HashSet::new();
    let mut dir_x: i32 = 0;
    let mut dir_y: i32 = -1;
    while is_within(x, y) {
        if blocker_x != -1 {
            let key = 10000 * x + 10 * y + 2 * dir_x + dir_y;
            if positions_with_direction.contains(&key) {
                return HashSet::new(); // Indicates that a loop was detected.
            }
            positions_with_direction.insert(key);
        }
        positions.insert(1000 * x + y);
        let next_x = x + dir_x;
        let next_y = y + dir_y;
        if is_within(next_x, next_y) && (is_obstacle(next_x, next_y) ||
                                         next_x == blocker_x && next_y == blocker_y) {
            let tmp = dir_x;
            dir_x = -dir_y;
            dir_y = tmp;
        } else {
            x += dir_x;
            y += dir_y;
        }
    }
    return positions;
}

fn is_within(x: i32, y: i32) -> bool {
    return x > -1 && x < INPUT[0].len() as i32 && y > -1 && y < INPUT.len() as i32;
}

fn is_obstacle(x: i32, y: i32) -> bool {
    return INPUT[y as usize].as_bytes()[x as usize] as char == '#';
}