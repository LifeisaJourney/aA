def array_translate(array)
  i=0
  new_str = ""
  while i < array.length
    word = array[i]
    times = array[i+1]
    times.times {new_str << word}
    i+=2
  end
  return new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts