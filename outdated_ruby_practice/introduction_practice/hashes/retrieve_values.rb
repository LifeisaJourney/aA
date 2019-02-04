#Takes hash
#Returns array
#each hash should return only things specific to the key
#key is unique throughout hash

def retrieve_values(hash1, hash2, key)
    h1 = hash1[key]
    h2 = hash2[key]
    return [h1, h2]
    #Not sure if [] is required since return h1, h2 works
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts
