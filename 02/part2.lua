function dump(heading, numbers)
   io.write(heading .. ': ')
   for x, n in pairs(numbers) do
      io.write(n .. ' ')
   end
   print()
end

function is_safe(numbers, left_index, right_index, skipped_index, is_increasing)
   if left_index < 1 then
      return false
   elseif right_index > #numbers then
      dump('safe', numbers)
      print()
      return true
   end
   dump('checking [' .. left_index .. ',' .. right_index .. '] in', numbers)
   if skipped_index ~= nil then
      dump('skipping ' .. numbers[skipped_index] .. ' at ' .. skipped_index .. ' in', numbers)
   end
   local a = numbers[left_index]
   local b = numbers[right_index]
   local is_bad = (a == b or
                   math.abs(a - b) > 3 or
                   a > b and is_increasing == true or
                   a < b and is_increasing == false)
   if is_bad then
      if skipped_index ~= nil then
         dump('unsafe', numbers)
         print()
         return false
      end
      return is_safe(numbers, left_index, right_index + 1, right_index, is_increasing) or
         is_safe(numbers, left_index - 1, right_index + 1, left_index, is_increasing)
   end
   if is_increasing == nil then
      is_increasing = b > a
   end
   left_index = left_index + 1
   if left_index == skipped_index then
      left_index = left_index + 1
   end
   right_index = left_index + 1
   if right_index == skipped_index then
      right_index = right_index + 1
   end
   return is_safe(numbers, left_index, right_index, skipped_index, is_increasing)
end

function main()
   local file = io.open("input", "r")
   local safe_count = 0
   for line in file:lines() do
      local numbers = {}
      for n in string.gmatch(line, "[0-9]*") do
         numbers[#numbers + 1] = n
      end
      if is_safe(numbers, 1, 2, nil, nil) then
         safe_count = safe_count + 1
      end
   end
   print("\n" .. safe_count) -- 622 is too low
end

is_safe({9, 12, 15, 18, 20, 22, 25, 27}, 1, 2, nil, nil)
-- main()
