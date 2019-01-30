#Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  new_arr = []
  (1...num).each do |ele|
    if num % ele == 0 && prime_num(ele)
      new_arr << ele
    end
  end
  return new_arr
end

def prime_num(num)
  if num < 2
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts