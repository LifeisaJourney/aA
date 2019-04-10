def translate(word)
  vowels = ["a", "e", "i", "o", "u"]
  new_str = ""
  new_arr = word.split(" ")
  new_arr.each do |ele|
    if vowels.include?(ele[0])
      new_str << ele + "ay"
      p new_str
    end
  end
  return new_str
end

