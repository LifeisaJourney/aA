# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

# split between first and second
# lower first
# only length of . is 1

def is_valid_email(str)
    array_holder = str.split("@")
    if array_holder.length != 2
        return false
    end

    first_place = array_holder[0]
    second_place = array_holder[1]
    alpha= "abcdefghijklmnopqrstuvwxyz"
    
    first_place.each_char do |char|
        if !alpha.include?(char)
            return false
        end
    end

    if second_place.split(".").length==2
        return true
    else 
        return false
    end
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
