#takes string
#returns hash
#look for lowercase ae characters only
#return value as counter of how many times ae appears
#counter[char] means that counter with the char key will gain value of +1 

def ae_count(str)
    counter = {"a" => 0, "e" => 0}
    str.each_char do |char|
        if (char =="a" || char =="e")
            counter[char] += 1 
        end
    end
    return counter 
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
