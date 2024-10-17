class Board
  attr_accessor :cells_input, :count_turn

  def initialize
    @cells_input = []
    @cells_input << BoardCase.new("A1")
    @cells_input << BoardCase.new("B1")
    @cells_input << BoardCase.new("C1")
    @cells_input << BoardCase.new("A2")
    @cells_input << BoardCase.new("B2")
    @cells_input << BoardCase.new("C2")
    @cells_input << BoardCase.new("A3")
    @cells_input << BoardCase.new("B3")
    @cells_input << BoardCase.new("C3")
    @count_turn = 0
  end

  def full?
    @cells_input.all? { |cell| cell.value != " " }  # Si aucune cellule n'a une valeur par défaut ("_"), le plateau est plein
  end

  def play_turn(player)
    puts "#{player.name} , choisis une case (A1 à C3)"
    choice = gets.chomp.upcase

    selected_case = @cells_input.find { |cell| cell.position == choice }

    if selected_case && selected_case.value == " "
      selected_case.update_case(player.symbol)
    else
      puts "Case invalide ou déjà prise, choisis une autre case."
      play_turn(player)
    end
  end

  def victory?
    winning_combinations = [
      [0, 1, 2], # ligne 1
      [3, 4, 5], # ligne 2
      [6, 7, 8], # ligne 3
      [0, 3, 6], # colonne 1
      [1, 4, 7], # colonne 2
      [2, 5, 8], # colonne 3
      [0, 4, 8], # diagonale 1
      [2, 4, 6]  # diagonale 2
    ]
  
    # Parcours chaque combinaison gagnante
    winning_combinations.each do |combo|
      if @cells_input[combo[0]].value == @cells_input[combo[1]].value &&
         @cells_input[combo[1]].value == @cells_input[combo[2]].value &&
         @cells_input[combo[0]].value != " "
        return true  # Il y a une combinaison gagnante
      end
    end
  
    false  # Pas de victoire
  end
end