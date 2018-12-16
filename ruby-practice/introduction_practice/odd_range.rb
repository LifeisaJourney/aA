#Takes the array and return the array of values for between min and max and odd 
def odd_range(min, max)
    #alternative solution is to set i = min then the if condition won't require the extra condition of i>= min
    i=0
    odd_only = []
    while i <= max 
        if i % 2 == 1 && i >= min
            odd_only << i 
        end
        i+=1 
    end
    return odd_only
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
