# frozen_string_literal: true

# Tic-Tac-Toe board
class Board
  include Enumerable

  attr_reader :empty_marker

  WINNING_LINES = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
    [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
    [1, 5, 9], [3, 5, 7]             # diagonals
  ].freeze

  def initialize
    @board = {}
    @empty_marker = ' '

    (1..9).each { |n| @board[n] = @empty_marker }
  end

  def [](key)
    @board[key]
  end

  def []=(key, value)
    @board[key] = value
  end

  def each(&block)
    @board.each(&block)
  end

  def display
    system 'clear'
    puts <<-DISPLAY

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

    DISPLAY
  end

  def keys
    @board.keys
  end

  def winning_lines
    WINNING_LINES
  end
end
