# show.rb
class Show
  def display_board(board)
    puts ' __A___B___C__'
    print "1|_#{board.cells_input[0].value}_|"
    print "_#{board.cells_input[1].value}_|"
    puts "_#{board.cells_input[2].value}_|"

    print "2|_#{board.cells_input[3].value}_|"
    print "_#{board.cells_input[4].value}_|"
    puts "_#{board.cells_input[5].value}_|"

    print "3|_#{board.cells_input[6].value}_|"
    print "_#{board.cells_input[7].value}_|"
    puts "_#{board.cells_input[8].value}_|"
    puts "\n" + "*" * 14
  end
end
