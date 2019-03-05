# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  #solution 1:
  # new_str = ""
  # str.each_char do |ele|
  #   if ele == ele.upcase  
  #     new_str << ele.upcase 
  #   end
    
  # end
  # new_str

  # solution 2:
  
  str.each_char do |ele|
    str.delete!(ele) if ele == ele.downcase 
  end
  str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  mid = str.length / 2
  if str.length.odd? 
    return str[mid]
  end
  str[mid-1..mid]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  vow = ["a","e","i","o","u"]
  # both array and string version works
  # vow = "a, e, i, o, u"
  count = 0
  str.each_char do |ele|
    if vow.include?(ele.downcase)
      count+=1
    end
  end
  return count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  #solution 1:
  # factorial = 1
  # (1..num).each do |num|
  #   factorial *= num 
  # end
  # factorial

  #solution 2:
  product = num
  until num == 1
    num -=1 
    product *=num 
  end
  product
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  joined = ""
  arr.each_index do |i|
    joined += arr[i].to_s
    joined += separator unless i == arr.length - 1
  end
  return joined 
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  return_str = ""
  #depreciated form of each_char is .char

  str.each_char.with_index do |ele, i|
    if i.odd?
      return_str += ele.upcase
    else 
      return_str += ele.downcase
    end
  end
  return return_str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  new_arr = []
  splitter = str.split(" ")
  splitter.each do |ele|
    if ele.length > 4
      ele = ele.reverse
    end
    new_arr << ele 
  end
  new_arr.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  new_arr = []
  (1..n).each do |ele|
    if ele % 3 == 0 && ele % 5 == 0 
      new_arr << "fizzbuzz"
    elsif ele % 5 == 0 
      new_arr << "buzz"
    elsif ele % 3 == 0
      new_arr << "fizz"
    else 
      new_arr << ele
    end
  end
  return new_arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  new_arr = []
  arr.each do |ele|
    new_arr.unshift(ele)
  end
  return new_arr
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  if num == 1 
    return false
  end

  (2..num/2).each do |ele|
    if num % ele == 0
      return false
    end
  end
  return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  new_arr = []
  (1..num).each do |ele|
    if num % ele == 0 
      new_arr << ele
    end
  end
  return new_arr
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  prime_factor=[]

  factors(num).each do |factor|
    if prime?(factor) 
      prime_factor << factor
    end
  end
  return prime_factor
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  even = []
  odd = []

  arr.each do |ele|
    if ele.even?
      even << ele 
    elsif 
      odd << ele
    end
  end

  if even.length > 1
    return odd[0]
  end

  return even[0]
end
