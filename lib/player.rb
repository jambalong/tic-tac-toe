# frozen_string_literal: true

# Player class for two-players
class Player
  attr_accessor :name
  attr_reader :player_number, :marker

  def initialize(player_number, marker)
    @player_number = player_number
    @marker = marker
  end
end
