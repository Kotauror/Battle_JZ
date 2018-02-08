require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) {double("name of player")}

  it 'has a name' do
    expect(player.name).to eq name
  end

  it 'has a name' do
    expect(player.name).to eq name
  end

  it 'receives damage' do
    expect{player.receive_damage}.to change{player.hp}.by(-10)
  end
end
