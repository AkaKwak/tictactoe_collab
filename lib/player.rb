# player.rb
class Player
  attr_accessor :name, :symbol, :score

  def initialize(name, symbol, color)
    @name = name.colorize(color)
    @symbol = symbol.colorize(color)
    @score = 0
  end
end