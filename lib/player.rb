require_relative 'game'


class Player

  DEFAULT_HP = 100
  DEFAULT_STATUS = true

  attr_reader :name, :hp
  attr_accessor :status

  def initialize(name, hp = DEFAULT_HP, status = DEFAULT_STATUS)
    @name = name
    @hp = hp
    @status = status
  end

  def receive_damage
    @hp -= 10
  end

end
