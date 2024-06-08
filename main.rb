# frozen_string_literal: true

require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/player'

def play_game
  game = Game.new
  game.start
  new_game
end

def new_game
  loop do
    puts 'Play another game? Enter [y] or [n]'
    input = gets.chomp.downcase

    case input
    when 'y'
      play_game
      break
    when 'n'
      end_game
      break
    else
      puts "Invalid input. Please enter 'y' or 'n'.\n\n"
    end
  end
end

def end_game
  puts "\nThank you for playing! Good-bye."
  sleep 2
  system 'clear'
end

play_game
