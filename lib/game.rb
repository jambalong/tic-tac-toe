class Game
  attr_reader :board, :player_one, :player_two, :current_player, :winner
  
  def initialize
    @board = Board.new
    @winner = nil
  end

  def start
    system 'clear'
    puts 'Game is starting...'
    sleep 3
    system 'clear'
    
    set_up
    play
  end

  private
    def play
      loop do
        board.display
        place_piece!
        break if winner?(current_player)
        @current_player = alternate(current_player)
        break if board_full?
      end
      board.display
      display_winner
    end

    def winner?(player)
      board.winning_lines.any? do |line|
        line.all? { |position| board[position] == player.marker }
      end.tap { |result| @winner = current_player if result }
    end

    def display_winner
      puts "#{winner.name} has won the game!"
      sleep 3
      system 'clear'
    end

    def board_full?
      board.none? { |_, marker| marker == board.empty_marker }
    end

    def alternate(player)
      player == player_one ? player_two : player_one
    end

    def place_piece!
      square = nil
  
      loop do
        puts "\nCurrent player: #{current_player.name}"
        puts "\nChoose a position to place a piece: #{join_or(empty_squares)}"
        square = gets.chomp.to_i
        break if empty_squares.include?(square)
        puts "Sorry, that's not a valid choice."
      end
  
      board[square] = current_player.marker
    end

    def empty_squares
      (1..9).select { |n| board[n] == board.empty_marker }
    end

    def join_or(squares, delimiter=', ', word='or')
      case squares.size
      when 0 then ''
      when 1 then squares.first
      when 2 then squares.join(" #{word} ")
      else
        squares[-1] = "#{word} #{squares.last}"
        squares.join(delimiter)
      end
    end

    def valid_name?(name)
      !name.empty? && !name.match?(/\d/)
    end

    def get_valid_name(player_number)
      loop do
        puts "\nWhat is Player #{player_number}'s name?"
        input_name = gets.chomp
        return input_name if valid_name?(input_name)
        
        puts 'Invalid name. Please enter a valid name.'
      end
    end

    def set_up
      puts 'Welcome to Tic-Tac-Toe'
      @player_one = Player.new(1, 'X')
      @player_one.name = get_valid_name(1)
      @player_two = Player.new(2, 'O')
      @player_two.name = get_valid_name(2)
      @current_player = @player_one

      puts "\nThe first to make a move: #{current_player.name}"
      sleep 2
    end
end
