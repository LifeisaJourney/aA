#Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
    counter = Hash.new(0)
    string.each_char {|ele| counter[ele]+=1}

    new_arr = []
    counter.each do |char, num|
        if num > 2
            new_arr << char
        end
    end
   return new_arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts