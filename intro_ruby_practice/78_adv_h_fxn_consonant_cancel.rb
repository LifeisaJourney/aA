#Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.


def consonant_cancel(sentence)
  new_arr = sentence.split(" ")
  new_str = new_arr.map do |char|
    remove(char)
  end
  new_str.join(" ")
end

def remove(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1]
    end
  end
end
p remove("rabiit")
puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"