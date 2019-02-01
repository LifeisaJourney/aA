#Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
    vowels = "aeiou"

    new_str = string.split("").map do |ele|
        if vowels.include?(ele)
            old_index = vowels.index(ele)
            new_index = (old_index + 1) % vowels.length
            vowels[new_index]
        else
            ele
        end
    end
    return new_str.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap