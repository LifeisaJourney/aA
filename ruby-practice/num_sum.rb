#Find sum of integers 1 to max, and return that sum
def sum_nums(max)
  i = 0
  sum=0
  while i <= max
  sum = sum +i
  i+=1
  end
return sum
end

#sum has to be set equal to zero before it can be accessed outside of scope
puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
