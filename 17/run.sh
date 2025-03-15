# rubocop -A
# ruby part2.rb
cp part1.asm part1.s
gcc -z noexecstack -o part1 part1.s
./part1
