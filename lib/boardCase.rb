# boardcase.rb
class BoardCase
  attr_accessor :value, :position

  def initialize(position)
    @value = " "
    @position = position
  end

  def update_case(value)
    @value = value
  end

end