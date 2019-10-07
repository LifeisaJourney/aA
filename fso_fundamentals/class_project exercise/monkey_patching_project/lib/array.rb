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
    
  def counts
    count = Hash.new(0)
    self.each  {|ele| count[ele]+=1}
    count
  end
end
