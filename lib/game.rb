class Game
  def initialize(player1,player2)
    @round=0
    @board=Board.new
    @player1=player1
    @player2=player2
    game
  end
  def game
    while @round<9
      @round+=1
      puts "#{@player1.name} vs #{@player2.name}   #{@player1.win} / #{@player2.win}"
      puts "partie #{@player1.win + @player2.win + 1} round #{@round}"
      @board.show
      player = (@round%2==0) ? @player1 : @player2
      puts "c'est au tour de #{player.name} de jouer"
      input=gets.chomp.upcase
      autorise=["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
      while !autorise.include?(input) || !@board.verify_case(input, player.symbole)
        puts "entrée non valide, réssaille :)"
        input=gets.chomp.upcase
      end
      @board.changer_case(input, player.symbole)
      if @board.verify_win
        puts "le joueur #{player.name} à gagné\n"
        player.win +=1
        break
      end
    end
    puts "c'est une egalité\n" if @round=9
  end
end

