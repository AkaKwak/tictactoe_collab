require 'minitest/autorun'
require_relative 'board'

class TestBoard < Minitest::Test
  def setup
    @board = Board.new
  end

  def test_verifier_case
    assert_equal true, @board.verifier_case("A1")
    @board.changer_case("A1", "X")
    assert_equal false, @board.verifier_case("A1")
  end

  def test_changer_case
    @board.changer_case("A1", "X")
    assert_equal "X", @board.instance_variable_get(:@cases)["A1"]
  end

  def test_verifier_victory
    @board.changer_case("A1", "X")
    @board.changer_case("A2", "X")
    @board.changer_case("A3", "X")
    assert_equal true, @board.verifier_victory
  end
end
