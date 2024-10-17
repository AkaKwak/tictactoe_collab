class Player
attr_reader :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end 
end

puts "player1 est ton nom ? ?"
    player1_name = gets.chomp
    player1_symbol = "X"
    player1 = Player.new(player1_name, player1_symbol)

puts "player2 quel est ton nom ?"
    player2_name = gets.chomp 
    player2_symbol = "O"
    player2 = Player.new(player2_name, player2_symbol)


puts "Bienvenue #{player1.name}, voici ton symbole : #{player1.symbol}"
puts "Bienvenue #{player2.name}, voici ton symbole : #{player2.symbol}"


