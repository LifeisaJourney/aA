def reverse(string)
    reverse_string = []
    #capture the reverse_string in array
    i=0
    while i< string.length
        reverse_string.unshift(string[i])
        #adds each character in string[i] to reverse_string
        i+=1
        #increase index so it doesn't infinite loop
    end
    abc=reverse_string.join("")
    #convert it back into string without any array or comma
    return abc
    #call the variable
end


#Testing for the match to see if it works

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
#prints out "abc"=="cba" : true
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
#prints out "a" == "a" : true
puts('reverse("I am a happy pet") == "tep yppah a ma I": ' + (reverse("I am a happy pet") == "tep yppah a ma I").to_s)
#prints out "I am a happy pet" == "tep yppah a ma I" : true
puts('reverse("") == "": ' + (reverse("") == "").to_s)
#prints out "" == "" : true