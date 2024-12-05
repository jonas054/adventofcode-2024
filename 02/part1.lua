function is_safe(line)
   local previous = nil
   local increasing = nil
   for str in string.gmatch(line, "[0-9]*") do
      value = tonumber(str)
      if previous ~= nil then
         if increasing == true then
            if value < previous then
               return false
            end
         elseif increasing == false then
            if value > previous then
               return false
            end
         else
            increasing = value > previous -- increasing was nil. Set for the first time.
         end
         if math.abs(value - previous) > 3 or value == previous then
            return false
         end
      end
      previous = value
   end
   return true
end

local file = io.open("input", "r")
local safe = 0
for line in file:lines() do
   if is_safe(line) then
      safe = safe + 1
   end
end
print(safe)
