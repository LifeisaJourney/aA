# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  new_str = []
  splitter = str.split(" ")
  splitter.each do |word|
    new_str << word[0].upcase + word[1..-1].downcase
    #word.capitalize works too
  end
  return new_str.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"