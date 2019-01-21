def doubler(numbers)
    i = 0
    new_arr = []
    while i < numbers.length
        new_arr << (numbers[i] * 2)
        i+=1
    end
    return new_arr
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]