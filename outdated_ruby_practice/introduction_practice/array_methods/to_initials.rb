# Take the inital letters of each word and return in string.
# Find alternative solution to it
# Used enumerates to solve it

def to_initials(name)
    # str = ""
    # partial = name.split(" ")
    # first_letter = partial[0][0]
    # second_letter = partial[1][0]
    # str << first_letter + second_letter
    
    str = ""
    partial = name.split(" ")
    partial.each {|part| str=str+part[0]}
    return str
end

puts to_initials("Kelvin Bridges") #=> "KB"
puts to_initials("Michaela Yamamtoto") #=> "MY"
puts to_initials("Mary La Grange") #=> "MLG"