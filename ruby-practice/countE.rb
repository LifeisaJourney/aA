#Take word as a string and return the number of e from the string
def count_e(word)
	i = 0
  counter = 0
  while i < word.length
    if word[i] == "e"
       counter +=1
    end
    i+=1
  end
   return counter
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3
