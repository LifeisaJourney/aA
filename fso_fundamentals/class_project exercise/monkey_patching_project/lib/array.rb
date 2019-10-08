# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    sorted = self.sort
    if self.length > 0 
      difference = sorted.last - sorted.first
      return difference
    end
    nil
  end

  def average 
    sum = 0
    average=0
    if self.length > 0
      self.each do |el|
        sum+=el
      end
      average = sum.to_f/self.length
      return average
    end
    nil 
  end

  def median
    return nil if self.length == 0
    
    sorted = self.sort
    middle = sorted.length/2
    if sorted.length % 2 == 1 
      return sorted[middle]
    elsif sorted.length % 2 == 0
      left =  (sorted[middle])
      right =sorted[middle-1]
      return avg = (left + right)/2.0
    end
  end
    
  def counts()
    count = Hash.new(0)
    self.each  {|ele| count[ele]+=1}
    count
  end

  def my_count(arg)
    num = 0 
    self.each do |el|
      if el == arg
        num+=1
      end
    end
    num
  end

  def my_index(arg)
    self.each.with_index do |k, i|
      if k == arg 
        return i
      end
    end
    nil
  end

  def my_uniq
    #method 1: 
    # new_arr = []
    # self.each do |el| 
    #   if !new_arr.include?(el)
    #     new_arr << el
    #   end
    # end
    # new_arr

    #method 2: 
    new_hash = {}
    self.each do |ele|
      new_hash[ele] = true
    end
  new_hash.keys
  end

  def my_transpose
   new_arr = []
    (0...self.length).each do |el|
      new_row = []
      (0...self.length).each do |col|
        new_row << self[col][el]
      end
      new_arr << new_row
    end
    new_arr
  end
end
