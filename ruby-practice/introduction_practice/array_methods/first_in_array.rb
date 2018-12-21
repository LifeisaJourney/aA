# takes array and two elements
# return element that appears earlier in the array.
def first_in_array(arr, el1, el2)
    ar2 = arr.index(el2)
    ar1 = arr.index(el1)
    if ar1<ar2
        return el1
    else 
        return el2
    end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); #=> "b"
puts first_in_array(["cat", "bird", "dog", "mouse" ], "dog", "mouse"); #=> "dog"