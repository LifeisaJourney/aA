class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(arr)
    if arr.all? {|char| POSSIBLE_PEGS.has_key?(char.upcase)}
      return true
    else
      return false
    end
  end
  
  def self.random(length)
    random_pegs = []
    length.times {random_pegs << POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end
  
  def initialize(arr)
    if Code.valid_pegs?(arr)
      @pegs = arr.map(&:upcase)
    else
      raise "Does not contain valid pegs"
    end
  end

  def [](index)
    return @pegs[index]
  end
  
  def length
    return @pegs.length
  end
end
