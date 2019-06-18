def translate(word)
  # vowels = "aeiou"
  vowels = ["a", "e", "i", "o", "u"]
  new_str = ""
  new_arr = word.split(" ")
  i=0
  # new_arr.map do |ele|
    # if vowels.include?(ele[0])
    #   new_str << ele + "ay"
    #   next
    # end
    # unless vowels.include?(ele[0])
    #   new_str << ele[i+1..-1] + ele[i] + "ay"
    #   next
    #   i+=1
    # end
  # end

    # while i < word.length
    #   first_letter = true
    #   new_arr.map do |ele|
    #     p ele
    #     vowel_first = vowels.include?(ele[0])
    #     if vowel_first
    #       new_str << ele + "ay"
    #       next
    #     end
    #   end
    #   i+=1
    # end

    new_arr.map do |ele|
      vowel_first = vowels.include?(ele[0])
      while i < word.length
        p vowel_first
        p word.length
        p ele[i]
        if vowel_first
          new_str << ele + "ay"
          p new_str
          break
        end
        # elsif
        #   new_str << ele[i..-1] + ele[i] + "ay"
        #   p new_str
        #   i+=1 
        #   break


      i+=1
      # break
      end
    
    end
  return new_str
end

