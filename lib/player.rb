require_relative 'game'


class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp
  attr_accessor :status

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= rand(1-15)
  end

end
