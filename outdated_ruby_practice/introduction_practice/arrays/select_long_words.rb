#take an array of words
#return new array with words from old array
#select for characters longer than 4 characters
def select_long_words(words)
	i = 0
  	long_char = []
  	while i < words.length
  		if words[i].length > 4 
          long_char << words[i]
        end
    	i+=1
    end
   	return long_char  
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
