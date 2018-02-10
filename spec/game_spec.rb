require 'game'


describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double "player 1", hp: 100 }
  let(:player2) {double "player 2", hp: 100 }
  let(:dead_player) { double('Dead Player', hp: 0) }
  subject(:dead_player_game) { Game.new(player1, dead_player) }


  describe "#player1" do
    it 'gets the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe "#player2" do
    it 'gets the second player' do
      expect(game.player_2).to eq player2
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#game_over?' do
    it 'returns false if the game is over' do
      expect(game).not_to be_game_over
    end

    it 'returns true if the game is over' do
      expect(dead_player_game).to be_game_over
    end
  end
end
