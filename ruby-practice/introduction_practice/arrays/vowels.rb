#Take word as a string and return the amount of times the vowels: a, e, i , o, u appears within the word.

def count_vowels(word)
    vowel= ["a","e","i","o","u"]
      i = 0
        counter = 0
        while i < word.length
  
        if (word[i] == "a") || (word[i] == "e") || (word[i] == "i") || (word[i] == "o") || (word[i] == "u")
  
        counter +=1
        end
        i+=1
      end
        return counter
  end
  
  puts count_vowels("bootcamp")  # => 3
  puts count_vowels("apple")     # => 2
  puts count_vowels("pizza")     # => 2
  