# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"
#take string , return string
# take string and turn array
# use array to capitalize method the words


def format_name(str)
    empty_array = []
    empty_string = "" 
    array_turner= str.split(" ")
    array_turner.each do |word|
        caps = word.capitalize
        empty_array << caps
    end
    empty_string = empty_array.join(" ")
    return empty_string
end
  
  puts format_name("chase WILSON") # => "Chase Wilson"
  puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
  