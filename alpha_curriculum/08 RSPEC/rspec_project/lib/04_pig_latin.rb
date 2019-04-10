def translate(word)
  vowels = ["a", "e", "i", "o", "u"]
  new_arr = word.split(" ")
  new_arr.each do |ele|
    
    if vowels.include?(ele[0])
      ele = ele + "ay"
    end

  end
end