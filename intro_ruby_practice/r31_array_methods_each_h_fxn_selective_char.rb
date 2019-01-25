#Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
  new_str = []
  splitter=sent.split(" ")
  splitter.each do |word|
    if word.length > 4
      new_str << abbreviate_word(word)
    end
  end
  return new_str.join(" ")
  # sent.each_char do |word|
  #   p word
  # end
end

def abbreviate_word(word)
  vowels = "aeiou"
  new_str = ""
  word.each_char do |char|
    if !vowels.include?(char)
    new_str << char
    end
  end
  return new_str
end
puts abbreviate_word("test")
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"