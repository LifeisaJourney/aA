# Hint: all keys of a hash are automatically unique
# Takes array 
#return hash?
# remove duplicates

def unique_elements(arr)
    count = Hash.new(0)
    new_array = []
    arr.each do |char|
        count[char]+=1    # gives the numerical value of char appearing. Will be used for determining how many times it appears
        if count[char] > 1 
            new_array << char
        end
    end

    return new_array
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
