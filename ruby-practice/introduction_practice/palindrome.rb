#takes a word as a string and returns the operator checking if the word is the same as it is in reverse. Returns boolean. 
def is_palindrome(word)
    i=word.length-1
    palin_string=""
    while i >= 0 
        palin_string = palin_string + word[i]
        i-=1
    end
    # puts palin_string
    return word == palin_string

end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
