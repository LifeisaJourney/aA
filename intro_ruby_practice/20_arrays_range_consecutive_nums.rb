def range(min, max)
    
 new_arr = []
     while min <= max

     new_arr << min
     min +=1
   end
 return new_arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]