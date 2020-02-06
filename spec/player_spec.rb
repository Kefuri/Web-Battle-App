require 'player'

describe Player do
  it 'returns a player name' do
    new_player = Player.new("Jonny")
    expect(new_player.name).to eq("Jonny")
  end
end