#take array of words
#return array of words
# add ... to the end of every word
# using map since this is an array 
def whisper_words(words)
    words.map {|word| word.downcase + "..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts