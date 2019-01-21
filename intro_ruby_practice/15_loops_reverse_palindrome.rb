def is_palindrome(word)
    i = word.length - 1
    reversed_str = ""

    while i >= 0
        char = word[i]
        reversed_str =  reversed_str + char
    i-=1
    end
    p reversed_str
    return reversed_str == word

end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false