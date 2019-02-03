#Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

def anagrams?(word1, word2)

  # Solution 1:
  #   word1.each_char do |ele1|
  #     word2.each_char do |ele2|
  #       if ele1==ele2 && word1.length == word2.length
  #         return true
  #       end
  #     end
  #   end
  # return false

  #   Solution 2:
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false