#Take word as a string and return the amount of times (a and A) appears as an integer 

def count_a(word)
	i = 0 
  	counter = 0 
  while i < word.length
    if (word[i] == "a") || (word[i] == "A")
      counter +=1
    end
    i+=1
  end
  return counter
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3
