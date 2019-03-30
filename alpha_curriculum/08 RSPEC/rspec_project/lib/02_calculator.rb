def add(int, num)
    return (int + num)
end


def subtract(int, num)
    return (int - num)
end

def sum(arr)
    int = 0
    arr.each do |ele|
       int += ele 
    end
    return int
end

def multiply(int, num)
    return (int * num)
end

def multi(int, num)
    return (int * num)
end

def power(base, exp)
    return (base**exp)
end

def factorial(int)
    i = 1
    sum = 1
    while i <= int 
        sum*=i
        i+=1
    end
    
    return sum
end