#takes parameter
#return hash containing those key values

def cat_builder(name_str, color_str, age_num)
    initialize_hash = { "name" => name_str, "color" => color_str, "age" => age_num}
    return initialize_hash
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts
