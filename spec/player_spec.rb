require 'player'

describe Player do 
  let(:player) {Player.new('Jake')}
  
  it 'Should return the players name' do
    expect(player.name).to eq('Jake')
  end
end