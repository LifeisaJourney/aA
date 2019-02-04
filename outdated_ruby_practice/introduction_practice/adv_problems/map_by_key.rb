# takes array of hashes and key-string 
# returns new array by selecting for values

def map_by_key(arr, key)
    arr.map do |hash|
        hash[key]
    end
end

locations = [
 {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
 {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
 {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts