def select_long_words(words)
  i = 0
  new_array = []
  while i < words.length 
      if words[i].length > 4 
        new_array << words[i]
      end
    i+=1
  end
  return new_array
end
  
  print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
  puts
  print select_long_words(["keep", "coding"])                               # => ["coding"]