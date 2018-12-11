#taking strings within the array and adding an exclaimation to the end of the string

def yell(words)
    i=0
    yelling = []
    while i < words.length
        yelling << words[i] + "!"

        i+=1
    end
    return yelling
end

print yell(["hello", "world"])
puts
print yell(["code", "is", "cool"])