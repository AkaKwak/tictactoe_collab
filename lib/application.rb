class Application
  def initialize
    @player1=Player.new("o")
    @player2=Player.new("x")
    lancer
  end
  def lancer
    loop do
      puts "bienvenu pour une nouvelle partie de morpion"
      Game.new(@player1,@player2)
    end
  end
end


