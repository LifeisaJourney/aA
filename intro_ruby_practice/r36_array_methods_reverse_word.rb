def reverse_words(sent)
    return_str = []
    splitter = sent.split(" ")
    splitter.each do |word|
        return_str << word.reverse
    end
    return return_str.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'