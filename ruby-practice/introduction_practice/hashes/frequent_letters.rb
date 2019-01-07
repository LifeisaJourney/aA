#count the number value for each char
#print string and value
#accept a string 
#return in new array


def frequent_letters(string)
    count = Hash.new(0)
    new_arr = []
    string.each_char do |char|
        count[char]+=1
    end

    count.each do |unit, num|
        if num > 2
        new_arr << unit
        end
    end
    return new_arr
end	
  
  print frequent_letters('mississippi') #=> ["i", "s"]
  puts
  print frequent_letters('bootcamp') #=> []
  puts
  