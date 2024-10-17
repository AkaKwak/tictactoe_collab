require 'minitest/autorun'
require_relative 'player'

class TestPlayer < Minitest::Test
  def test_player_initialization
    player = Player.new("Alice", "X")
    assert_equal "Alice", player.name
    assert_equal "X", player.symbol
  end
end
