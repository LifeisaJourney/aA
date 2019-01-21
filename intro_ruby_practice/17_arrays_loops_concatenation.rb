def yell(words)
    container = []
       words.map do |word|
          container << word + "!"
    end
   return container
end
   
   print yell(["hello", "world"]) # => ["hello!", "world!"]
   puts
   print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]