require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code)  
    puts "this is the number of exact matches: #{@secret_code.num_exact_matches(code)}"
    puts "this is the number of near matches: #{@secret_code.num_near_matches(code)}"
  end

  def ask_user_for_guess
    puts "Enter a code"
    guess= Code.from_string(gets.chomp)
    self.print_matches(guess)
    if guess == @secret_code
      return true
    else
      return false
    end
  end
end
