require 'player'

RSpec.describe Player do
  it 'stores and returns its own name' do
    player_1 = Player.new("Squall")
    expect(player_1.name).to eq 'Squall'
  end
end