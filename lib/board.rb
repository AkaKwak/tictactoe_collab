class Board
  def initialize
    @hash = {
        "A1" => " ", "A2" => " ", "A3" => " ",
        "B1" => " ", "B2" => " ", "B3" => " ",
        "C1" => " ", "C2" => " ", "C3" => " "}
  end
  def verify_case(string, rien)
    return (@hash[string]==" ")
  end
  def changer_case(string, symbole_du_joueur)
    return (@hash[string] = symbole_du_joueur)
  end
  def verify_win # si win true
    (@hash["A1"]==@hash["A2"] && @hash["A1"]==@hash["A3"] && @hash["A1"]!=" ") ||
    (@hash["B1"]==@hash["B2"] && @hash["B1"]==@hash["B3"] && @hash["A1"]!=" ") ||
    (@hash["C1"]==@hash["C2"] && @hash["C1"]==@hash["C3"] && @hash["C1"]!=" ") ||
    (@hash["A1"]==@hash["B1"] && @hash["A1"]==@hash["C1"] && @hash["A1"]!=" ") ||
    (@hash["A2"]==@hash["B2"] && @hash["A2"]==@hash["C2"] && @hash["A2"]!=" ") ||
    (@hash["A3"]==@hash["B3"] && @hash["A3"]==@hash["C3"] && @hash["A3"]!=" ") ||
    (@hash["A1"]==@hash["B2"] && @hash["A1"]==@hash["C3"] && @hash["A1"]!=" ") ||
    (@hash["A3"]==@hash["B2"] && @hash["A3"]==@hash["C1"] && @hash["A3"]!=" ") 
  end
  # def view_board
  #   Show.new(@hash.values)
  # end
  def show  
    puts "   1   2   3 "
    puts "A  #{@hash['A1']} | #{@hash['A2']} | #{@hash['A3']}"
    puts "  ---|---|---"
    puts "B  #{@hash['B1']} | #{@hash['B2']} | #{@hash['B3']}"
    puts "  ---|---|---"
    puts "C  #{@hash['C1']} | #{@hash['C2']} | #{@hash['C3']}"
  end
end
