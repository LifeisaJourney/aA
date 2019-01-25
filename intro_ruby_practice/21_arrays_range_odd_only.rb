#Write a method odd_range(min, max) that takes in two numbers min and max. The method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
    new_arr = []
    i = min 
    while i <= max 
        if i % 2 == 1
            new_arr<< i
        end
        i+=1
    end
    return new_arr
end
    
    print odd_range(11, 18) # => [11, 13, 15, 17]
    puts
    print odd_range(3, 7)   # => [3, 5, 7]