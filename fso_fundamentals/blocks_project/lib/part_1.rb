def select_even_nums(arr)
    arr.select(&:even?)
end


def reject_puppies(dogs)
    dogs.reject {|dog| dog['age'] <= 2}
end

def count_positive_subarrays(arr1)
    arr1.count {|subarr| subarr.sum > 0 }
end


def aba_translate(string)
    vowels = "aeiou"
    new_word = ""
    string.each_char do |el|
        if vowels.include?(el)
            new_word += el + "b" + el
        else
            new_word += el
        end
    end
    new_word
end



def aba_array(arr)
    arr.map {|el| aba_translate(el)}
end


