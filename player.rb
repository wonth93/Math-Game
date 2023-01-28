class Player

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
# puts player2.name
