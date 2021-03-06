class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

    until game_over
    take_turn
    end

    game_over_message
    reset_game

  end

  def take_turn
    
      show_sequence
      require_sequence

      unless game_over
      round_success_message
      sleep 2
      @sequence_length += 1
      end
  

  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      system("clear")
      puts color
      sleep 0.5
      system("clear")
      sleep 0.5
    end
  end

  def require_sequence
    puts "Enter the sequence with a space between colors"
    answer = gets.chomp.split
    if answer != seq
      @game_over = true
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Round #{sequence_length} Successful! Get ready for the next round:"
  end

  def game_over_message
    puts "Game Over! You made it to Round #{sequence_length}"
    puts "This was the correct sequence:"
    print seq
    puts
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

s = Simon.new
s.play
