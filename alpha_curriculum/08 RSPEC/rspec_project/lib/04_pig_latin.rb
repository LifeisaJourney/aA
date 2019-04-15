def translate(word)
  # vowels = "aeiou"
  vowels = ["a", "e", "i", "o", "u"]
  new_str = ""
  new_arr = word.split(" ")
  i=0
  new_arr.map do |ele|
    if vowels.include?(ele[0])
      new_str << ele + "ay"
      next
    end
    unless vowels.include?(ele[0])
      new_str << ele[i+1..-1] + ele[i] + "ay"
      next
      i+=1
      
    #   new_str << ele + "ay"
    # elsif 
    #   new_str << ele[1..-1] + ele[0] + "ay"

    # ele.each_char do |val|
    #   p val[0]
    end
    
  end
  return new_str
end

