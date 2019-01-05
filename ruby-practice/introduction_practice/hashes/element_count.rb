# Takes array
# Returns hash
# Within hash contains count of each element in array without selection
# since I want to count every element in the hash, I will use Hash.new(0)
# can't use {"a" => 0, "b" => 0} with explicit elements.
def element_count(arr)
    count = Hash.new(0)
    arr.each do |char|
        count[char] +=1
    end
    return count
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
