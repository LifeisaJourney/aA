#takes string
#returns string
# add ! to the end of every word
#map works only on array so split is necessary
#split sentence to return each word
def yell_sentence(sent)
    # words = sent.split(" ")
    # new_str = words.map do |word|
    #     word.upcase + "!"
    # end
    # return new_str.join(" ")
    
    #Alternative code: DRY method in a single line by joining the dot methods
    ret_sent = sent.split.map { |word| word.upcase + "!" }.join(" ")
    return ret_sent
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"