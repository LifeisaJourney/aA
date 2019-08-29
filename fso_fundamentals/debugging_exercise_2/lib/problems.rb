# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    num.downto(2) do |factor|
        if num % factor == 0 && prime?(factor)
            return factor
        end
    end
end

def prime?(num)
    return false if num < 2
    (2...num).each do |el|
        return false if num % el == 0
    end
    true
end





def unique_chars?(str)
    no_duplicates = []
    str.each_char do |el|
        if no_duplicates.include?(el)
            return false
        end
        no_duplicates << el
    end
    true
end





def dupe_indices(arr)
    #generates a new array to store value to that specific [key]
    indices = Hash.new { |h, k| h[k] = []}
    
    arr.each_with_index do |ele, i|
        #references key at specific index
        indices[ele]  << i
    end
    indices.select {|k, v| v.length > 1}
    #picks out the array length that have more than 1 
end



def ana_array(ar1, ar2)
    count_1 = ele_count(ar1)
    count_2 = ele_count(ar2)
    count_1 == count_2
end

def ele_count(arr)
    count = Hash.new(0)
    arr.each {|ele| count[ele] += 1}
    #uses each ele as a key for count hash
    count
end
