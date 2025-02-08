echo "=== Ruby ==="
ruby both.rb
# gnatmake both && ./both
echo "=== Zig ==="
zig build && ./zig-out/bin/both
