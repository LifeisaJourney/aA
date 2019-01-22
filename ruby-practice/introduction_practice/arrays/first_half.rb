# takes an array and returns a new array,
#first half of the element is returned in the new array
# if it is odd numbered of elements, return the middle value too
def first_half(array)
    new_array = []
    i = 0
    while i < array.length / 2.0
        new_array << array[i]

        i+=1
    end
    return new_array
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
