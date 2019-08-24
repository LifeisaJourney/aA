def partition(arr, num)
    lesser = []
    greater = []
    container = [lesser, greater]

    arr.each do |el|
        if num <= el
            greater << el  
        else 
            lesser << el

        end
    end
    container
end

def merge(hash_1, hash_2)
    new_hash = {}
    hash_1.each { |k,v| new_hash[k] = v }
    hash_2.each { |k,v| new_hash[k] = v }
    new_hash
end

def censor(sentence, curse_words)
    words = sentence.split(" ")
    
    new_words = words.map do |word| 
        if curse_words.include?(word.downcase)
            star_vowels(word)
        else
            word
        end
    end
    new_words.join(" ")
end

def star_vowels(string)
    vowels = "aeiou"
    new_str = ""
    string.each_char do |char|
        if vowels.include?(char.downcase)
            new_str += "*"
        else
            new_str += char
        end
    end
    new_str
end

def power_of_two?(num)
    product = 1 
    while product < num
        product *= 2
    end
    product == num
end