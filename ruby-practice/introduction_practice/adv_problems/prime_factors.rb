#find the prime number
#then select for the factors
def prime_factors(num)
    prime_array = []
    (1...num).each do |ele|
        if num % ele == 0 && prime?(ele)
            prime_array << ele
        end
    end
    return prime_array
end

def prime?(nums)
    if nums < 2
        return false
    end

    (2...nums).each do |ele|
        if nums % ele == 0 
            return false
        end
    end
    return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts