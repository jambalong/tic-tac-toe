class Player
  attr_reader :name, :marker

  def initialize(player_number, marker)
    @player_number = player_number
    @marker = marker
    @name = nil
  end

end
