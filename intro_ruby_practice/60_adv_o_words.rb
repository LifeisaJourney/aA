#Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution!

def o_words(sentence)
    #return sentence.split(" ").select {|ele| ele.include?("o")}

    #alternative solution
    new_arr = []
    splitter= sentence.split(" ")
    splitter.map do |word|
        word.each_char do |char|
            if word[char] == "o"
                new_arr << word
            end
        end
    end
    return new_arr
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts