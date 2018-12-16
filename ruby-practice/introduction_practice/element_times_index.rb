# Takes an array of numbers and returns a new array containing new array multiplied by its own index

def element_times_index(numbers)
    i=0
    new_array=[]
    while i < numbers.length
        position= i 
        multiplier= numbers[i] * i 
        new_array << multiplier
        i+=1
    end
    return new_array
end

print element_times_index([4, 7, 6, 5]) # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) #=> [0, 1, 2, 3, 4, 5]