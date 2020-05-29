require 'game' 

describe Game do

  let(:player) {double(:player)}

  it 'should call #attack on a player' do
    allow(player).to receive(:reduce_hp)
    subject.attack(player)
  end
end