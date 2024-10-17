class Player
  attr_reader :name, :symbole
  attr_accessor :win
  def initialize(symbole)
    question_name
    @symbole = symbole
    @win = 0
  end
  def question_name
    puts "quel est ton nom ?"
    @name = gets.chomp
  end
end
