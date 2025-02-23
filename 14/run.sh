#!/usr/bin/sh

echo "-------------------- Part 2 --------------------"
echo "=== Ruby ==="
ruby part2.rb
echo "=== Java ==="
javac Part2.java && java -cp . Part2
echo "-------------------- Part 1 --------------------"
echo "=== Ruby ==="
ruby part1.rb
echo "=== Java ==="
javac Part1.java && java -cp . Part1
