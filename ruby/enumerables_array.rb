class Array
  def my_each(&prc)
    self.length.times do |i|
      prc.call(self[i])
    end
  end

  return_value = [1,2,3].my_each {|num| num}

  def my_select(&prc)
    selected = []
    self.my_each do |item|
        selected << item if prc.call(item)
    end
    selected
  end
  
  example_a = [1,2,3]
  example_a.my_select { |num| num > 1 }
  example_a.my_select { |num| num == 4 }

  def my_reject(&prc)
    new_arr = []
    self.my_each do |ele|
      if !prc.call(ele)
        new_arr << ele
      end
    end
    new_arr
  end
  
  example_b = [1,2,3]
  example_b.my_reject { |num| num > 1}
  example_b.my_reject { |num| num == 4}

  def my_any?(&prc)
    self.each do |item|
      if prc.call(item)
        return true
      end
    end
    false
  end

  def my_all?(&prc)
    self.each do |item|
      unless prc.call(item)
        return false
      end
    end
    true
  end
  
  example_c = [1,2,3]
  example_c.my_any? {|num|  num > 1}
  example_c.my_any? {|num|  num == 4}
  example_c.my_all? {|num| num > 1}
  example_c.my_all? {|num| num < 4}

  def my_flatten
    new_arr = []
    self.my_each do |item|
      if item.is_a?(Array)
        new_arr.concat(item.my_flatten)
      else
        new_arr << item
      end
    end
    new_arr
  end
  
  example_d= [1,2,3, [4, [5,6]], [[[7]], 8]].my_flatten

  def my_zip(*arrays)
    zipped_arr = []
    self.length.times do |i|
      subzip = [self[i]]
      arrays.my_each do |array|
        array[i]
        subzip << array[i]
      end
      zipped_arr <<  subzip
    end
    zipped_arr
  end  
  alpha = [ 4, 5, 6 ]
  beta = [ 7, 8, 9 ]
  [1, 2, 3].my_zip(alpha, beta) 
  alpha.my_zip([1,2], [8])   
  [1, 2].my_zip(alpha, beta)    
  
  cow = [10, 11, 12]
  delta = [13, 14, 15]
  [1, 2].my_zip(alpha, beta, cow, delta) 

  def my_rotate(position = 1)
    split_idx = position % self.length
    self.drop(split_idx) + self.take(split_idx)
    
  end

  rotation_arr = ["a", "b", "c", "d"]
  rotation_arr.my_rotate
  rotation_arr.my_rotate(2)
  rotation_arr.my_rotate(-3)
  rotation_arr.my_rotate(15)

  def my_join(seperator = "")
    join = ""
    self.length.times do |i|
      join += self[i]
      unless i == self.length-1
        join += seperator
      end
    end
    join
  end

  join_sample = ["a", "b", "c", "d"]
  join_sample.my_join
  join_sample.my_join("$")

  def my_reverse
    new_arr = []
    self.my_each do |part|
      new_arr.unshift(part)
    end
    new_arr
  end

  ["a", "b","c"].my_reverse
  [1].my_reverse
end  

