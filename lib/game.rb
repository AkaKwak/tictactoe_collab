class Game
  attr_accessor :board, :player1, :player2, :current_player, :players
  
  def initialize
    @board = Board.new
    @players = []
    create_players
    @current_player = @player1
  end

  def start
    until @board.victory? || @board.full?
      Show.new.display_board(@board)  # Affiche le plateau
      @board.play_turn(@current_player)  # Demande au joueur de jouer
      switch_player  # Change de joueur
    end

    Show.new.display_board(@board)

    if @board.victory?
      puts "#{@current_player.name} a gagné !"
    else
      puts "Match nul !"
    end
  end

  def create_players
    puts "Entrez le nom du Joueur 1 :"
    name1 = gets.chomp
    puts "Entrez le nom du Joueur 2 :"
    name2 = gets.chomp
    @player1 = Player.new(name1, "X", :red)
    @player2 = Player.new(name2, "O", :blue)
    @current_player = @player1
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end
end