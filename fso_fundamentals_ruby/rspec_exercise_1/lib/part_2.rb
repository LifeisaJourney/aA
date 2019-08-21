def hipsterfy(str)
    vowels="aeiou"
    i = str.length - 1
    while i >= 0 
        if vowels.include?(str[i])
        return str[0...i] + str[i+1..-1]
        end
        i-=1
    end
    str
end

def vowel_counts(str)
    counts = Hash.new(0)
    vowels="aeiou"
    str.each_char do |el|
        if vowels.include?(el.downcase)
            counts[el.downcase] +=1
        end
    end


    counts
end