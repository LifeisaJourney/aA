#Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.

def larger_number(num1, num2)
    if num2 > num1
        return num2
    else 
        return num1
    end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100
