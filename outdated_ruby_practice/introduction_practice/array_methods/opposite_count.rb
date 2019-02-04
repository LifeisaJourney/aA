#Take unique numbers
#return the pair of opposite numbers 
# return a counter
def opposite_count(nums)
    count = 0

    nums.each_with_index do |ele1, idx1|
        nums.each_with_index do |ele2, idx2|
            if ele1 + ele2 ==0 && idx2 > idx1
                count+=1    
            end
        end
    end
    return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
