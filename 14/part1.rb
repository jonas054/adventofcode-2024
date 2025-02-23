# frozen_string_literal: true

PUZZLE_INPUT = <<~TEXT
p=1,79 v=-93,36
p=37,71 v=-49,11
p=26,56 v=43,78
p=15,6 v=8,-45
p=28,22 v=89,-32
p=55,52 v=99,-59
p=55,28 v=-51,-53
p=42,8 v=-50,14
p=57,38 v=-31,16
p=14,102 v=-56,84
p=41,20 v=-73,-17
p=74,40 v=-79,71
p=96,83 v=-10,-85
p=63,66 v=55,-7
p=85,89 v=71,95
p=11,58 v=-36,45
p=97,72 v=14,3
p=94,16 v=-56,-48
p=71,15 v=-92,-49
p=4,9 v=3,72
p=84,45 v=20,93
p=84,13 v=-61,-68
p=42,31 v=72,71
p=10,62 v=-79,80
p=54,21 v=-42,-17
p=35,55 v=87,38
p=32,56 v=28,89
p=98,52 v=-63,67
p=98,65 v=49,74
p=32,9 v=-77,41
p=98,18 v=-28,72
p=30,16 v=-33,-63
p=52,101 v=-97,43
p=35,39 v=-16,-10
p=67,94 v=48,-16
p=21,69 v=24,66
p=46,69 v=-50,-6
p=2,24 v=-60,-70
p=6,88 v=-87,-89
p=33,96 v=64,69
p=29,80 v=34,22
p=52,23 v=83,57
p=93,11 v=93,10
p=13,78 v=-1,-37
p=66,28 v=-90,-24
p=21,101 v=-25,32
p=71,89 v=-46,87
p=5,94 v=91,47
p=43,40 v=22,73
p=92,12 v=18,-82
p=22,20 v=43,-83
p=3,45 v=-41,93
p=95,17 v=53,-94
p=43,6 v=-99,-84
p=6,73 v=-93,78
p=32,37 v=-23,-81
p=18,42 v=38,82
p=85,77 v=71,84
p=2,64 v=49,15
p=95,40 v=-74,82
p=47,90 v=-18,-19
p=36,75 v=-91,-36
p=80,26 v=-72,-46
p=5,59 v=-94,-66
p=49,55 v=-53,37
p=100,3 v=82,17
p=34,28 v=77,-4
p=33,8 v=41,87
p=78,7 v=-5,-14
p=15,7 v=45,94
p=14,94 v=67,95
p=38,0 v=-16,76
p=34,10 v=-86,-57
p=15,57 v=-5,1
p=26,52 v=-36,-3
p=80,37 v=16,-87
p=61,44 v=83,82
p=69,9 v=-49,93
p=70,65 v=-45,26
p=39,2 v=-58,47
p=59,98 v=13,80
p=94,42 v=60,-32
p=5,39 v=-68,84
p=94,82 v=-39,-93
p=58,82 v=-51,91
p=34,1 v=-82,50
p=90,60 v=-39,4
p=25,24 v=63,35
p=39,57 v=28,52
p=15,63 v=-67,-11
p=78,40 v=-33,34
p=16,66 v=26,24
p=49,74 v=-86,-30
p=61,23 v=79,-39
p=64,65 v=11,-66
p=39,98 v=-47,35
p=100,98 v=7,-52
p=50,27 v=-43,52
p=92,9 v=-81,-83
p=78,57 v=60,31
p=5,62 v=-54,-66
p=97,97 v=-19,-23
p=53,77 v=3,61
p=67,12 v=25,4
p=62,51 v=-81,12
p=24,62 v=-14,99
p=50,74 v=-7,-22
p=10,83 v=-67,-37
p=65,86 v=57,84
p=0,29 v=-63,42
p=42,61 v=76,85
p=39,49 v=59,36
p=100,4 v=-74,36
p=36,99 v=-72,32
p=51,20 v=-7,-78
p=85,18 v=-37,-31
p=57,0 v=79,-93
p=78,29 v=-81,-28
p=87,102 v=-83,20
p=21,81 v=-78,44
p=16,52 v=12,32
p=33,99 v=-67,-63
p=19,39 v=52,-73
p=71,39 v=-13,23
p=22,36 v=32,93
p=91,47 v=95,34
p=23,49 v=-7,1
p=51,38 v=-12,-75
p=80,35 v=97,-6
p=25,83 v=54,49
p=47,97 v=9,-25
p=87,73 v=7,-59
p=79,92 v=-20,-1
p=40,11 v=13,50
p=83,71 v=-13,-24
p=69,13 v=-1,-33
p=98,8 v=51,80
p=12,39 v=34,-58
p=52,40 v=21,20
p=16,0 v=-15,54
p=22,52 v=76,-58
p=23,43 v=-25,49
p=80,81 v=-37,-19
p=45,95 v=-7,-34
p=59,19 v=81,-57
p=21,56 v=11,-44
p=14,9 v=56,-47
p=75,49 v=9,45
p=45,95 v=-66,14
p=24,45 v=54,23
p=82,3 v=-4,25
p=22,72 v=-79,-96
p=80,86 v=51,93
p=50,102 v=94,84
p=42,26 v=-71,72
p=57,45 v=-88,-62
p=44,61 v=85,-58
p=67,3 v=-90,-20
p=23,35 v=85,-55
p=64,101 v=11,73
p=73,95 v=46,-96
p=60,40 v=48,-87
p=58,4 v=-88,32
p=60,77 v=-2,99
p=78,45 v=-33,34
p=19,13 v=54,75
p=80,59 v=97,-80
p=97,0 v=38,76
p=54,47 v=-31,12
p=10,85 v=41,27
p=29,54 v=65,-18
p=73,87 v=-68,-74
p=44,86 v=57,78
p=42,52 v=28,23
p=5,30 v=51,7
p=41,1 v=90,-2
p=19,9 v=45,83
p=85,84 v=49,-11
p=80,69 v=-48,96
p=5,46 v=-54,-21
p=87,58 v=97,-33
p=69,2 v=59,88
p=28,15 v=5,97
p=6,57 v=1,-7
p=36,102 v=-11,-92
p=17,27 v=80,-20
p=47,102 v=83,84
p=32,23 v=42,90
p=45,56 v=-84,-62
p=74,51 v=88,38
p=42,61 v=-95,-15
p=41,11 v=-36,-35
p=94,55 v=-15,-13
p=93,44 v=73,-36
p=38,22 v=74,86
p=35,49 v=63,-95
p=18,46 v=-11,42
p=49,42 v=4,-10
p=26,80 v=46,71
p=73,71 v=-13,-96
p=7,91 v=-80,69
p=38,63 v=21,98
p=41,75 v=-95,88
p=33,53 v=-3,-14
p=93,89 v=-43,43
p=20,26 v=-23,-98
p=87,40 v=-50,78
p=16,60 v=93,-47
p=55,1 v=92,-60
p=72,98 v=-86,-7
p=81,40 v=53,75
p=7,48 v=-6,-29
p=47,22 v=34,44
p=6,54 v=-87,-84
p=90,102 v=-52,24
p=25,34 v=-84,-69
p=59,78 v=9,37
p=74,55 v=81,70
p=86,90 v=5,-55
p=80,47 v=97,-91
p=45,5 v=-40,6
p=26,94 v=43,14
p=35,84 v=41,-85
p=72,86 v=-49,-98
p=64,33 v=79,-98
p=87,58 v=-24,12
p=6,13 v=-17,31
p=89,47 v=19,-69
p=19,24 v=-76,-43
p=17,72 v=12,66
p=38,49 v=61,-95
p=39,24 v=28,-83
p=56,27 v=48,79
p=62,47 v=-65,-30
p=59,27 v=-77,16
p=54,69 v=-66,-22
p=34,0 v=82,33
p=45,13 v=75,33
p=54,62 v=-99,-44
p=27,94 v=-1,47
p=61,21 v=35,-28
p=0,39 v=60,-69
p=97,63 v=60,38
p=87,94 v=-35,51
p=66,5 v=42,-13
p=3,8 v=93,-27
p=4,67 v=16,-52
p=47,96 v=81,18
p=49,15 v=-77,-49
p=6,92 v=-52,62
p=30,46 v=-62,86
p=72,25 v=-70,79
p=67,18 v=-53,-94
p=42,40 v=28,-80
p=27,91 v=-98,-14
p=42,99 v=38,8
p=21,16 v=-18,7
p=97,33 v=40,42
p=2,97 v=93,25
p=45,69 v=83,73
p=39,14 v=70,6
p=51,36 v=-42,82
p=2,2 v=-52,-60
p=62,22 v=-88,42
p=60,86 v=-41,-68
p=42,11 v=76,57
p=27,76 v=52,-92
p=16,22 v=-36,-51
p=5,34 v=-27,-61
p=76,60 v=77,-84
p=44,37 v=69,3
p=20,65 v=10,-51
p=65,47 v=-95,70
p=45,2 v=83,-53
p=31,75 v=-25,-63
p=87,38 v=-8,-32
p=41,29 v=-56,-54
p=10,65 v=17,51
p=17,12 v=-12,13
p=61,44 v=22,-39
p=21,61 v=-1,-15
p=13,52 v=-41,-10
p=1,26 v=53,20
p=62,59 v=-57,-40
p=66,16 v=-33,94
p=50,71 v=24,95
p=1,27 v=-50,83
p=98,90 v=29,98
p=80,69 v=-19,31
p=19,41 v=39,-67
p=48,36 v=-75,19
p=12,92 v=65,-86
p=29,91 v=-91,6
p=20,49 v=65,12
p=53,91 v=95,30
p=63,97 v=-70,91
p=29,53 v=-16,67
p=41,30 v=-7,53
p=18,81 v=32,-49
p=22,62 v=54,-66
p=91,80 v=51,-8
p=12,81 v=56,-74
p=50,46 v=-11,27
p=25,52 v=-69,-14
p=9,83 v=58,-8
p=42,47 v=-27,23
p=71,85 v=69,-72
p=44,102 v=94,38
p=63,83 v=-14,9
p=82,67 v=31,92
p=58,22 v=-89,-9
p=48,72 v=-42,-55
p=56,88 v=-77,18
p=39,39 v=-6,-54
p=34,48 v=-3,-36
p=52,81 v=58,-42
p=23,87 v=56,62
p=74,56 v=-47,-18
p=45,1 v=-93,-20
p=62,10 v=2,-5
p=14,82 v=72,-93
p=28,21 v=-78,20
p=1,52 v=-72,56
p=19,57 v=-1,78
p=32,67 v=-16,-77
p=98,22 v=86,24
p=10,21 v=-72,7
p=52,32 v=68,78
p=83,54 v=-50,51
p=9,82 v=-64,52
p=75,41 v=-62,-59
p=45,65 v=11,-44
p=74,79 v=66,-4
p=66,2 v=13,-7
p=43,91 v=81,6
p=1,52 v=-94,-99
p=20,86 v=-23,80
p=80,11 v=-4,-9
p=19,58 v=-23,92
p=58,102 v=13,-82
p=84,70 v=53,-44
p=15,100 v=54,2
p=93,66 v=29,-44
p=27,8 v=39,35
p=2,41 v=25,-3
p=69,102 v=57,81
p=79,42 v=-90,85
p=1,82 v=-89,-33
p=3,74 v=-54,-11
p=49,100 v=-22,58
p=47,78 v=-5,-16
p=97,82 v=-26,-4
p=67,72 v=-24,92
p=50,33 v=50,-14
p=52,28 v=-77,-61
p=0,35 v=-30,-43
p=24,29 v=34,90
p=1,49 v=97,6
p=67,97 v=-79,76
p=65,75 v=-57,33
p=6,70 v=-74,-62
p=27,43 v=-25,-76
p=27,101 v=-80,73
p=31,56 v=54,89
p=91,44 v=51,-39
p=86,29 v=18,11
p=99,10 v=23,10
p=73,83 v=99,-46
p=93,82 v=-85,88
p=98,17 v=-99,-73
p=7,57 v=42,4
p=14,39 v=-81,-28
p=80,92 v=16,-97
p=0,42 v=-8,51
p=23,7 v=69,-42
p=63,42 v=-44,78
p=88,21 v=64,13
p=88,41 v=-17,23
p=16,102 v=46,-22
p=31,56 v=30,-58
p=51,84 v=52,99
p=31,68 v=65,-92
p=98,90 v=14,-48
p=93,47 v=27,12
p=99,52 v=-96,-47
p=58,47 v=-51,-58
p=75,91 v=-50,85
p=15,4 v=89,-27
p=19,80 v=34,18
p=47,84 v=-70,-41
p=53,11 v=-9,-64
p=15,34 v=-23,-3
p=65,5 v=2,54
p=35,1 v=-91,-99
p=53,93 v=-86,47
p=41,82 v=-74,-68
p=8,17 v=5,16
p=13,98 v=-67,47
p=12,81 v=80,51
p=36,48 v=8,93
p=45,87 v=6,14
p=54,53 v=81,-73
p=18,7 v=-67,72
p=73,81 v=40,44
p=98,1 v=71,-12
p=6,15 v=36,-35
p=10,28 v=54,1
p=5,12 v=-80,-86
p=42,49 v=2,-32
p=28,47 v=-38,-10
p=31,32 v=85,20
p=6,46 v=17,-70
p=27,63 v=-94,48
p=78,32 v=-6,60
p=44,38 v=-7,60
p=2,86 v=-54,-30
p=38,83 v=59,69
p=58,65 v=42,-66
p=22,10 v=-69,79
p=96,55 v=80,82
p=42,94 v=61,95
p=37,36 v=39,86
p=15,55 v=-56,-77
p=26,10 v=-36,-90
p=94,59 v=51,66
p=81,36 v=51,64
p=5,44 v=-32,24
p=52,60 v=-42,-66
p=92,24 v=51,90
p=5,3 v=-87,76
p=97,97 v=-8,-1
p=57,93 v=-62,51
p=9,56 v=-35,-19
p=89,77 v=-47,-40
p=86,41 v=-50,1
p=39,75 v=63,-17
p=68,64 v=-15,-85
p=9,13 v=74,-72
p=7,78 v=-76,51
p=35,45 v=-71,-25
p=85,77 v=-15,58
p=65,100 v=51,6
p=88,26 v=77,42
p=37,25 v=-58,1
p=81,19 v=-64,56
p=100,22 v=-52,35
p=83,69 v=-26,-88
p=99,24 v=-78,-61
p=40,49 v=-29,19
p=37,24 v=52,57
p=37,28 v=6,-65
p=34,71 v=-86,74
p=61,20 v=96,-83
p=35,71 v=-49,99
p=53,70 v=6,-19
p=91,40 v=5,-91
p=98,67 v=76,96
p=87,92 v=22,-46
p=39,97 v=70,-60
p=20,8 v=81,-18
p=59,67 v=-13,26
p=86,22 v=-43,-47
p=69,56 v=78,-90
p=9,42 v=34,85
p=48,46 v=23,-33
p=45,54 v=-95,-95
p=1,84 v=27,32
p=88,84 v=62,-85
p=11,12 v=12,38
p=89,8 v=70,57
p=47,5 v=30,28
p=52,22 v=89,20
p=48,90 v=-97,58
p=44,24 v=98,50
p=21,49 v=-27,52
p=93,22 v=16,35
p=44,80 v=4,-8
p=72,29 v=-46,-35
p=19,63 v=25,-51
p=66,15 v=44,61
p=3,35 v=-41,53
p=93,19 v=49,-46
p=14,56 v=67,-73
p=8,22 v=-22,-2
p=79,60 v=-64,-97
p=99,18 v=95,-9
p=54,102 v=70,10
p=58,78 v=-75,66
p=90,94 v=51,3
p=88,40 v=5,-76
p=57,4 v=-38,-9
p=88,89 v=-50,62
p=55,48 v=24,-84
p=56,77 v=92,-33
p=27,44 v=-90,-61
p=39,66 v=4,85
p=37,31 v=-93,-72
p=54,52 v=70,-88
p=93,91 v=91,53
p=88,66 v=-39,-81
TEXT

EXAMPLE = <<~TEXT
  p=0,4 v=3,-3
  p=6,3 v=-1,-3
  p=10,3 v=-1,2
  p=2,0 v=2,-1
  p=0,0 v=1,3
  p=3,0 v=-2,-2
  p=7,6 v=-1,-3
  p=3,0 v=-1,-2
  p=9,3 v=2,3
  p=7,3 v=-1,2
  p=2,4 v=2,-3
  p=9,5 v=-3,-3
TEXT

MINI_EXAMPLE = <<~TEXT
  p=2,4 v=2,-3
TEXT

def main(input, width, height)
  robots = []
  input.lines.each do |line|
    next unless line =~ /p=(\d+),(\d+) v=(-?\d+),(-?\d+)/

    robots << { position: Complex($1.to_i, $2.to_i), velocity: Complex($3.to_i, $4.to_i) }
  end
  robots.each do |bot|
    end_pos = bot[:position] + 100 * bot[:velocity]
    bot[:position] = Complex(end_pos.real % width, end_pos.imag % height)
  end
  robots
    .map { _1[:position] }
    .reject { |pos| pos.real == width / 2 || pos.imag == height / 2 }
    .group_by { [_1.real < width / 2, _1.imag < height / 2] }
    .values
    .map { _1.flatten.length }
    .reduce(:*)
end

p main(EXAMPLE, 11, 7)
p main(PUZZLE_INPUT, 101, 103)
