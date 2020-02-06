class Player 

  def initialize(name)
    @player_name = name
    @health = 100
  end

  def name
    @player_name
  end

  def lose_hp(health = 10)
    @health -= health
  end
  
  def health
    @health
  end
end