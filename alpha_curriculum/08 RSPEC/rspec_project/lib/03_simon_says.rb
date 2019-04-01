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

