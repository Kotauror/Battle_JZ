require 'game'


describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}

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
end
