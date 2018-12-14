# accepts array
# min and max not included in the array
# return the array in reverse by unshift method

def reverse_range(min, max)
    i=min 
    reversed_arr =[]
    while i < max 
        if i < max && i != min
            reversed_arr.unshift(i) 
        end
      i+=1
    end
    reversed_arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
