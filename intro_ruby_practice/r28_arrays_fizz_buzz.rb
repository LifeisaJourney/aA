#Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers from 0 to max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
  i = 1
  new_arr = []
  while i < max 
    if (i % 4 == 0 || i % 6 == 0) && !( i % 4 ==0 && i % 6 == 0 )
      new_arr << i
    end
    i+=1
  end
  return new_arr
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]