#Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.

def reverse(word)
    new_str = ""
       i = word.length-1
        while i  >= 0
        char = word[i]
            new_str << char
      i-=1
      end
    return new_str
end
   
   puts reverse("cat")          # => "tac"
   puts reverse("programming")  # => "gnimmargorp"
   puts reverse("bootcamp")     # => "pmactoob"