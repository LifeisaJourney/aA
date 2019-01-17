# get the range of numbers that can divide into the array as helper function
# take the helper function only if it is divisible by 2 since it is looking for the greatest factor
def greatest_factor_array(arr)
    new_arr = arr.map do |ele|
        if ele % 2 == 0
            greatest_factor(ele)
        else
            ele
        end
    end
    return new_arr
end

#need to use reverse_each to go backward since it is searching from the greatest end
def greatest_factor(nums)
    (1...nums).reverse_each do |num|
        if nums % num == 0
            return num 
        end
    end
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts