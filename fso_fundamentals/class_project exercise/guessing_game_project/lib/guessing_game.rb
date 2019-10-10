class GuessingGame
  def initialize(min, max)
    @secret_num = rand(0..100)
    @num_attempts = 0
    @game_over = false
  end

  def num_attempts
     @num_attempts
  end

  def game_over?
     @game_over
  end

  def check_num(num)
    @num_attempts+=1
    if num > @secret_num
      print 'too big'
    elsif num < @secret_num
      print 'too small'
    else num == @secret_num
      @game_over = true
      print 'you win'
    end
  end

  def ask_user
    print 'enter a number'
    response = gets.chomp.to_i
    check_num(response)
  end
end
