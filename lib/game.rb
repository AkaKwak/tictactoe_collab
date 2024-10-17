class Game
    def jeu

    while @tour < 9
        if @tour.even?  # Si le tour est pair, c'est le joueur 1
            joueur = "Joueur 1"
          else  # Si le tour est impair, c'est le joueur 2
            joueur = "Joueur 2"
          end

          