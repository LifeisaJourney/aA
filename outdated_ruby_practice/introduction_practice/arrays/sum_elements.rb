# Takes 2 arrays as arguments in the parameter
#Return new array with the elements in the arrays concatenated. 
def sum_elements(arr1, arr2)
	i=0
  	new_array = []
  	while i < arr1.length
      sum_array= arr1[i] + arr2[i]
      new_array << sum_array
      i+=1
    end 
  return new_array  
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]
