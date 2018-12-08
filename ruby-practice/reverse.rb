#reverse the string input as word and output it in reverse. 
# strategy: work out the problem from a desending iteration. 
# return the word based on while loop
# store the returned values back into an empty string
def reverse(word)
    i = word.length - 1
    reversed = ""
    while i >= 0
        char = word[i]
        reversed = char + reversed
        i -= 1
    end
    return reversed
end
#view the result by ruby reverse.rb
puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
