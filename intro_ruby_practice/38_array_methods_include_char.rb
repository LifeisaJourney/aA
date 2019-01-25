#Write a method pig_latin_word that takes in a word string and translates the word into pig latin.
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"
  if vowels.include?(word[0])
    return word + "yay"
  else 
    return word[1..-1]+word[0]+"ay"
  end
  

  #alternative solution
  # vowels = "aeiou"
  # if vowels.include?(word[0])
  #   return word + "yay"
  # end
  
  # word.each_char.with_index do |ele, i|
  #   if vowels.include?(ele)
  #     word[i..-1] + word[0...i] + "ay"
  #   end
  # end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"