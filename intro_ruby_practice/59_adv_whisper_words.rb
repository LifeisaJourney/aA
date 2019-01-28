#Write a method whisper_words that takes in an array of words and returns a new array containing a whispered version of each word. See the examples. 

def whisper_words(words)
    new_arr = []
    words.map do |ele|
        new_arr << ele.downcase + "..."
    end
 return new_arr
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts