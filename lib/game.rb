class Game
    attr_reader :board, :players, :current_player
  
    def initialize
      # Initialisation des joueurs en appelant la classe Player
      @players = create_players
      # Création d'une nouvelle instance de Board
      @board = Board.new
      # Le premier joueur commence
      @current_player = @players[0]
    end
  
    def start
      puts "Préparez vos X et O, la bataille épique du Morpion commence !"
      board.show
  
      # Boucle principale jusqu'à la fin de la partie (victoire ou égalité)
      until game_over?
        play_turn
        switch_player
      end
  
      # Message de fin de partie
      if board.verifier_victory
        puts "Bravo, #{previous_player.name} a gagné la partie !"
      else
        puts "C'est une égalité !"
      end
    end
  
    private
  
    # Crée les deux joueurs en demandant leurs noms
    def create_players
      puts "Nom du joueur 1 :"
      player1_name = gets.chomp
      puts "Nom du joueur 2 :"
      player2_name = gets.chomp
  
      [Player.new(player1_name, "X"), Player.new(player2_name, "O")]
    end
  
    # Gérer un tour de jeu
    def play_turn
      puts "#{current_player.name}, choisis une case (ex: A1, B2, C3) :"
      position = gets.chomp.upcase
  
      # Vérifier si la case est libre et faire le mouvement
      if board.verifier_case(position)
  