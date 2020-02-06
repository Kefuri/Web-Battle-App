require 'player'

describe Player do
  it 'returns a player name' do
    new_player = Player.new("Jonny")
    expect(new_player.name).to eq("Jonny")
  end

  describe "#lose_hp" do
    it 'should reduce player 2 hp by 10' do
      player_2 = Player.new("Sophie")
      expect { player_2.lose_hp(10) }.to change { player_2.health }.by(-10)
    end

    it 'should let player 1 attack player 2' do
      player1 = Player.new("Sophie")
      player2 = Player.new("Haydon")
      expect { player1.attack(player2) }.to change {player2.health }.by(-10)
    end
  end
end