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

