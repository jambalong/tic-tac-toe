class Game
  attr_reader :board, :player_one, :player_two
  
  def initialize
    @board = Board.new
    @player_one = nil
    @player_two = nil
  end

  def start
    system 'clear'
    puts "Game is starting..."
    sleep 3
    system 'clear'
    
    play
  end

  def play
    board.display
  end
end
