class Board
  WINNING_LINES = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
      [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
      [1, 5, 9], [3, 5, 7]             # diagonals
  ]

  def initialize
    @board = {}
    @empty_marker = ' '

    (1..9).each { |n| @board[n] = @empty_marker }
  end

  def display
    system 'clear'
    puts <<-EOS

         |     |
      #{@board[1]}  |  #{@board[2]}  |  #{@board[3]}
         |     |
    -----+-----+-----
         |     |
      #{@board[4]}  |  #{@board[5]}  |  #{@board[6]}
         |     |
    -----+-----+-----
         |     |
      #{@board[7]}  |  #{@board[8]}  |  #{@board[9]}
         |     |
    
    EOS
  end
end
