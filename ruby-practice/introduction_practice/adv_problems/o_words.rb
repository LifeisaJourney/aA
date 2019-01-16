#takes string of sentence
#returns array of words that contain a certain letter o
# using .select as array method
# split sentence into array

def o_words(sentence)
    return sentence.split.select {|word| word.include?("o")}
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts