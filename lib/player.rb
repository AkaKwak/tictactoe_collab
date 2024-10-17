class Player
  attr_reader :name, symbole
  attr_accessor :win
  def initialize(name, symbole)
    question_name
    @symbole = symbole
    @victoir = 0
  end
  def question_name(name)
    puts "quel est ton nom ?"
    @name = gets.chomp
  end
end
