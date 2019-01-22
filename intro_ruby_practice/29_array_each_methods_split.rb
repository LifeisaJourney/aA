def to_initials(name)
    empty_str = ""
    splitter=name.split(" ")
    splitter.each do |letter|
        empty_str << letter[0]
    end
    return empty_str
end


puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"