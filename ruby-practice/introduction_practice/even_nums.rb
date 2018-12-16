#take an array of numbers and return the even integers
#put the if condition within the while loop
def even_nums(max)
    i = 0
    even_digits=[]
    while i <=max
        if i %2 ==0
        even_digits<<i 
        end
        i+=1
    end
    return even_digits
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
