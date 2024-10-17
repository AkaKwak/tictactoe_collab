class Game
attr_accessor :player1_name, :player2_name
    

    def initialize
        puts "Joueur 1 quel est ton nom ?"
        @player1_name = gets.chomp

        puts "Joueur 2 quel est ton nom ?"
        @player2_name = gets.chomp


        @cases = {"A1" => " ", "A2" => " ", "A3" => " ",
            "B1" => " ", "B2" => " ", "B3" => " ",
            "C1" => " ", "C2" => " ", "C3" => " "}
end


    def afficher_board
    puts "#{@cases['A1']} | #{@cases['A2']} | #{@cases['A3']}"
    puts "---------"
    puts "#{@cases['B1']} | #{@cases['B2']} | #{@cases['B3']}"
    puts "---------"
    puts "#{@cases['C1']} | #{@cases['C2']} | #{@cases['C3']}"
  end
end

jeu = Game.new
puts "Bienvenue à vous 2 !!"
jeu.afficher_board