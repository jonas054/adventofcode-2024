function main()
   local file = io.open("input", "r")
   local safe_count = 0
   for line in file:lines() do
      local numbers = {}
      for n in string.gmatch(line, "[0-9]*") do
         numbers[#numbers + 1] = tonumber(n)
      end
      if any_with_one_skipped_is_safe(numbers) then
         safe_count = safe_count + 1
      end
   end
   print("\n" .. safe_count)
end

function any_with_one_skipped_is_safe(numbers)
   for skip_ix = 1, #numbers do
      local removed_number = table.remove(numbers, skip_ix)
      if is_safe(numbers) then
         return true
      end
      table.insert(numbers, skip_ix, removed_number)
   end
   return false
end

function is_safe(numbers)
   local previous = nil
   local is_increasing = numbers[1] < numbers[2]
   for ix, value in pairs(numbers) do
      if previous ~= nil then
         if is_increasing and value < previous or
            not is_increasing and value > previous then
            return false
         end
         if math.abs(value - previous) > 3 or value == previous then
            return false
         end
      end
      previous = value
   end
   return true
end

main()
