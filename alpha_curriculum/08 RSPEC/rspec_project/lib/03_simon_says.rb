def echo(word)
    empty_str = ""
    return empty_str << word
end

def shout(word)
    return "#{word.upcase}"
end

def repeat(word, repeat=2)
    return Array.new(repeat, word).join(" ")
    #Array.new(#, string) will result in ["string"]
end

def start_of_word(word, int=1)
    real = int - 1
    # p word.split("")[0]
    new_arr = word.split("")
    return new_arr[0..real].join("")
end

def first_word(word)
    new_arr = word.split(" ")
    return new_arr[0]
end

def titleize(title, int=1)
   new_arr = []
   new_sent = ""
   splitter = title.split
   splitter.map do |ele|
      if ele.include?("and") || ele.include?("over") || ele.include?("the")
         new_arr << ele.downcase
      else
         new_arr << ele.capitalize 
         if new_arr[0] == "the"
            new_arr[0] = new_arr[0].capitalize
         end
      end
      new_sent = new_arr.join(" ")
   end
   return new_sent
end