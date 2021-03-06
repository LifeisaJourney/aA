# use pop and unshift
# use num as reference to times method 
def rotate_array(arr, num)
    new_array = []
    num.times do 
        ele = arr.pop
        new_array = arr.unshift(ele)
    end
    return new_array
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts
