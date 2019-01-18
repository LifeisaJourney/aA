def longer_string(str1, str2)
    if str2.length > str1.length
        return str2
    else
        return str1
    end
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"
