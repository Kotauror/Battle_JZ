require 'game'


describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double "player 1", status: true }
  let(:player2) {double "player 2", status: true }


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

  describe "#switch" do
    it 'changes the status of player after turn' do
      player1.should_receive(:status=).with(true)
      player2.should_receive(:status=).with(false)
      game.switch(player2)
    end
  end
end
