def reverse(string)
    reverse_string = []
    i=0
    while i< string.length
        reverse_string.unshift(string[i])
        i+=1
    end
    abc=reverse_string.join("")
    return abc
end

#Testing for the match to see if it works

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
#prints out "abc"=="cba" : true