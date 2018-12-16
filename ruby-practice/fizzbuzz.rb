#Takes max number as integer
#Return array that 
# i divides by 4 OR 6
# DOES NOT i divide by 4 AND 6
def fizz_buzz(max)
	new_array=[]
  	i=1
  	while i < max
     if (i % 4 == 0 ||  i % 6 == 0)  && !(i % 4 ==0 && i % 6 == 0)
       new_array << i
     end
      i+=1
    end
  	return new_array	
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
