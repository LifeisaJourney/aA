def no_dupes?(arr)
    count = Hash.new(0)
    arr.each {|el| count[el] += 1}
    count.keys.select {|ele| count[ele]== 1}
end

# p no_dupes?([1,1,2,1,3,2,4])   #[3,4]
# p no_dupes?(['x','x','y','z','z']) #['y']
# p no_dupes?([true, true, true]) #[]

def no_consecutive_repeats?(arr)
    (0...arr.length-1).each do |i|
        if arr[i] == arr[i+1]
            return false
        end
    end
    true
end

# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true

def char_indices(string)
    indicies = Hash.new {|k, v| k[v] = []}
    string.each_char.with_index do |el, i|
        indicies[el] <<  i
    end
    indicies
end

# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

def longest_streak(string)
    current = ""
    longest = ""
    (0...string.length).each do |i|
        if string[i] == string[i-1] || i == 0 
            current += string[i]
        else
            current = string[i]
        end
        if current.length >= longest.length
            longest = current
        end
    end
    longest
end

# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'

def bi_prime?(num)
    prime_facts = prime_factors(num)
    prime_facts.any? do |a|
        b = num / a 
        prime_facts.include?(b)
    end
end

def prime?(num)
    return false if num < 2
    # (2...num).none? {|el| num % el == 0}
    (2...num).each do |el|
        if num % el == 0 
            return false
        end
    end
    return true
end

def prime_factors(num)
    (2...num).select {|fact| num % fact == 0 && prime?(fact)}
end


# p prime?(5)
# p prime_factors(20)
# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false

def vigenere_cipher(message,keys)
    alphabet = ("a".."z").to_a
    new_message = ""
    message.each_char.with_index do |char, i|
        old_pos = alphabet.index(char)
        new_pos = old_pos + keys[i % keys.length]
        new_message += alphabet[new_pos % alphabet.length]
    end
    new_message
end

# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])             # => "dbbo"

def vowel_rotate(string)
    new_str = string[0..-1]
    vowels = "aeiou"
    vowel_indicies = (0...string.length-1).select {|i| vowels.include?(string[i])}
    #[1, 4, 6] chosen
    #indicies of vowels in string
    
    new_vowel_indicies = vowel_indicies.rotate(-1) 
    #[1, 4, 6] --> [6, 1, 4]
    #rotating the vowel indicies
    
    vowel_indicies.each.with_index do |vowel_idx, i|
        #indexes all the vowel_indicies
        # vowel_idx is [1,4,6] or ["o", "u", "e"]
        new_vowel= string[new_vowel_indicies[i]]
        # ["e", "o", "u"] from 6, 1, 4
        new_str[vowel_idx] = new_vowel
        # ["o", "u", "e"] to ["e", "o", "u"]
    end
    new_str
end


# p vowel_rotate('computer')      # => "cempotur" [ 1, 4, 6]
# p vowel_rotate('oranges')       # => "erongas"
# p vowel_rotate('headphones')    # => "heedphanos"
# p vowel_rotate('bootcamp')      # => "baotcomp"
# p vowel_rotate('awesome')       # => "ewasemo"

class String
    def select(&prc)
        new_str = "" 
        return "" if  prc.nil?
            self.each_char do |char|
                new_str+=char if prc.call(char)
            end
        new_str
    end


# p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
# p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
# p "HELLOworld".select          # => ""

    def map!(&prc)
        self.each_char.with_index do |el, i|
            prc.call(el, i)
        end
    end

end
word_1 = "Lovelace"
word_1.map! do |ch| 
    if ch == 'e'
        '3'
    elsif ch == 'a'
        '4'
    else
        ch
    end
end
# p word_1        # => "Lov3l4c3"

word_2 = "Dijkstra"
word_2.map! do |ch, i|
    if i.even?
        ch.upcase
    else
        ch.downcase
    end
end
# p word_2        # => "DiJkStRa"


def multiply(a, b)
    return 0 if (b == 0)
    if b < 0
        -(a + multiply(a, (-b)-1))
    else
        a + multiply(a, b-1)  
    end
end



# Examples
# p multiply(3, 5)        # => 15
# p multiply(5, 3)        # => 15
# p multiply(2, 4)        # => 8
# p multiply(0, 10)       # => 0
# p multiply(-3, -6)      # => 18
# p multiply(3, -6)       # => -18
# p multiply(-3, 6)       # => -18


def lucas_sequence(length)
    return [] if length == 0
    return [2] if length == 1
    return [2, 1] if length == 2
    seq = lucas_sequence(length - 1)
    next_el = seq[-1] +seq[-2]
    seq << next_el
    seq
end

# Examples
# p lucas_sequence(0)   # => []
# p lucas_sequence(1)   # => [2]    
# p lucas_sequence(2)   # => [2, 1]
# p lucas_sequence(3)   # => [2, 1, 3]
# p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
# p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]


def prime_factorization(num)
    (2...num).each do |fact|
        if num % fact == 0
            other_fact = num / fact 
            return [ *prime_factorization(fact), *prime_factorization(other_fact)]
        end
    end
    [num]
end

# Examples
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]