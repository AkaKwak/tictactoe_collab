class application
  def initialize
    @player1=Player.new(o)
    @player2=Player.new(x)
  end
  def lancer
    loop
      puts "bienvenu pour une nouvelle partie de morpion"
      Game.new(@player1,@player2)
    end
  end
end


