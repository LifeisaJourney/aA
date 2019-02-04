#find prime numbers
#then return prime numbers

def prime?(num)
    if num < 2 
        return false
    end

    (2...num).each do |ele|
        if num % ele == 0 
            return false
        end
    end
    return true
end

def pick_primes(numbers)
    return numbers.select {|ele| prime?(ele)}
    #use helper function to find the prime
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts