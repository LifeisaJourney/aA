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
   # word_splitter = title.split(" ")
   # p word_splitter[0]
   # p word_splitter[1]
   p Array.new(int, title).join(" ")
end