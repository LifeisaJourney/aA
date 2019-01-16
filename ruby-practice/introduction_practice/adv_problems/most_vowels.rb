#use helper function to take in every word
#create hash that contains the key as word and value as number of letters
def vowel_count(word)
    count = 0
    vowels = "aeious"
    word.each_char do |char|
        if vowels.include?(char)
            count += 1 
        end
    end
    return count
end

def most_vowels(sentence)
    counts = {}
    words = sentence.split
    words.each { |word| counts[word] = vowel_count(word) }
    sorted = counts.sort_by { |k, v| v } #sort by value
    return sorted[-1][0]
end

print most_vowels("what a wonderful life") #=> "wonderful"