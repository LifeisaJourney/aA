# takes sentence and returns a new sentence
# every word is longer than 4 characters will have all its vowels removed
# hold the sent within an empty array then reconvert it back to string. 
# array is easier to modify

def abbreviate_sentence(sent)
    words = sent.split(" ")
    array_container = []

    words.each do |word|
        if word.length > 4
            new_word = abbreviate_word(word)
            array_container << new_word
        else 
            array_container << word
        end
    end
    return array_container.join(" ")
end


def abbreviate_word(word)
    vowels = "aeiou"
    new_word = "" 
    word.each_char do |char|
        if !vowels.include?(char)
            new_word +=char 
        end
    end
    return new_word
    
end


puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
