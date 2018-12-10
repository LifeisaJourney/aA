# Takes the array indicies as element and return it as a double in value
#returns as a new array
def doubler(numbers)
    doubled= []
    i=0
    while i < numbers.length
        old_container= numbers[i]
        new_container=old_container * 2
        doubled << new_container
        i+=1
    end
    return doubled
end

doubler([7,1,8]) #[14,2,16]
doubler([2,4,9]) #[4,8,18]