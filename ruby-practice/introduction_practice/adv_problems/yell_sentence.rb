#takes string
#returns string
# add ! to the end of every word
#split sentence to return each word
def yell_sentence(sent)
    words = sent.split(" ")
    new_str = words.map do |word|
        word.upcase + "!"
    end
    return new_str.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"