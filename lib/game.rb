require_relative 'player'

class Game

  attr_reader :players, :current_turn

  def self.create(player1, player2)
    @game = Game.new(player1, player2) # new automaticly calls initialize
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def heal(player)
    player.heal
  end

  def switch_turns
    @current_turn = opponent_of(@current_turn)
  end

  def defending_player
    (@players - [@current_turn])[0]
  end

  def game_over?
    player_1.hp <= 0 || player_2.hp <= 0
  end


  private

  def opponent_of(current_player)
    @players.select { |player| player != current_turn }.first
  end

end
