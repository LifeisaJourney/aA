#take array
# the number represents the amount of times a word is repeated
# return string

def array_translate(array)
    new_string = ""
    i=0
    while i < array.length
        ele1 = array[0]
        ele2 = array[1]
        ele2.times {new_string+= ele1}
        i+=2
    end
    return new_string
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
