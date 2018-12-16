#Take an integer and return in an array
#Return values that can divide num by itself

def factors_of(num)
    i = 1
    new_array = []

    while i <= num 
        if num % i == 0
            new_array << i   
        end

        i+=1
    end

    return new_array
end

print factors_of(3) #=> [1, 3]
puts
print factors_of(4) # => [1,2,4]
puts
print factors_of(8) #=> [1, 2,4,8]
puts
print factors_of(9) # => [1,3, 9]
puts
print factors_of(16) #=> [1, 2,4,8,16]
