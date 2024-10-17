require 'minitest/autorun'
require_relative 'show'

class TestShow < Minitest::Test
  def setup
    @show = Show.new
  end

  def test_display
    cases = ["X", "O", " ", "X", " ", "O", " ", " ", "X"]
    expected_output = <<~BOARD
         1   2   3
    A  X | O |  
      ---|---|---
    B  X |   | O
      ---|---|---
    C    |   | X
    BOARD

    assert_output(expected_output) { @show.display(cases) }
  end
end
