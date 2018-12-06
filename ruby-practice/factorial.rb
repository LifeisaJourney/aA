#finding the multiplication factors from num
def factorial(num)
	i = 1
  multi=1
  while i <= num
  multi*=i
  i+=1 
  end
  return multi
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
