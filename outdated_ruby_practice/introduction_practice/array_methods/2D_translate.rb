def two_d_translate(arr)
    new_arr = []
    arr.each do |subele|
        first = subele[0]
        second = subele[1]
        second.times { new_arr << first}
    end

    return new_arr
end

arr_1 = [
['boot', 3],
['camp', 2],
['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
['red', 1],
['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
