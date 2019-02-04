# split the sentence into array
# Declare empty hash
# add word.length into empty hash
#return empty hash
def word_lengths(sentence)
    new_hashes = {}
    turn_array = sentence.split(" ")

    turn_array.each do |word|
        new_hashes[word] = word.length
    end
    return new_hashes
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}
