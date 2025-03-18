# rubocop -a
# ruby part1.rb
# gcc -z noexecstack -o part1 part1.s && ./part1
echo Part 1
gcc -ggdb -z noexecstack -o part1 part1.s && ./part1

echo Part 2, example
cpp part2_ex.s > tmp.s
gcc -ggdb -z noexecstack -o part2_ex tmp.s && ./part2_ex

echo Part 2, puzzle
cpp part2.s > tmp.s
gcc -ggdb -z noexecstack -o part2 tmp.s && ./part2
