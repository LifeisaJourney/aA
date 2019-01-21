def factorial(num)
  i = 1
   count = 1
   while i <= num
       count *= i
       i+=1
 end
return count
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120