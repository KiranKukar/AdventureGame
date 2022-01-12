require 'player'

describe Player do
  subject(:player) { Player.new('Pingu') }
  it 'player can put in their name' do
    expect(player.name).to eq 'Pingu'
  end


end