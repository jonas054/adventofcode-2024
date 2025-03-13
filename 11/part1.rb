EXAMPLE = '125 17'.split
INPUT = '2 72 8949 0 981038 86311 246 7636740'.split

@blink = {}

def blink(stones, times)
  return stones.length if times == 0
  return stones.sum { blink([_1], times) } if stones.length > 1

  stone = stones.first
  @blink[[stone, times]] ||= blink(arrange(stone), times - 1)
end

def arrange(stone)
  if stone == '0'
    ['1']
  elsif stone.length.even?
    half = stone.length / 2
    [stone[0, half], stone[half..].to_i.to_s]
  else
    [(stone.to_i * 2024).to_s]
  end
end

p blink(EXAMPLE, 25) # 55312
print 'Part 1: ', blink(INPUT, 25), "\n" # 202019
print 'Part 2: ', blink(INPUT, 75), "\n" # 239_321_955_280_205
p @blink.size
