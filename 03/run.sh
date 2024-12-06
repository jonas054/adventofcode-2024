awk -f part1.awk example
awk -f part1.awk input
awk -f part2.awk example2 | awk -f part1.awk
awk -f part2.awk input | awk -f part1.awk
