# takes arr and hash
#returns arr 
# the returned arr  replaces the key with value

def element_replace(arr, hash)
    new_array = []
    arr.each do |ele1|
        # p ele1
        if hash.has_key?(ele1)
            new_array << hash[ele1]
        else 
            new_array << ele1
        end
    end
    return new_array
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
