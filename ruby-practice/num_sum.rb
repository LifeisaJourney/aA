#Find sum of integers 1 to max, and return that sum
def sum_nums(max)
	i = 0
  while i <= max
  sum = sum +i
  i+=1
  end
return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
