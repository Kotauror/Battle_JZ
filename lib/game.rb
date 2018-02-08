require_relative 'player'

class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    if (@players - [player])[0].status == true then
      player.receive_damage
    end
  end

  def switch(player)
    player.status = false
    ((@players - [player])[0]).status = true
  end
end
