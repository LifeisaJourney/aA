def echo(word)
    empty_str = ""
    return empty_str << word
end

def shout(word)
    return word.upcase
end

def repeat(word)
    new_str = ""
    new_str << word+ " " + word
    return new_str
end

