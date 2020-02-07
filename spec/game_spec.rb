require './lib/game'

describe Game do
  describe '#attack' do
    it 'attacks a player' do
      player = double("player double")
      game = Game.new
      expect(player).to receive(:lose_hp)
      game.attack(player)
    end
  end
end