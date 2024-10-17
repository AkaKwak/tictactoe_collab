require 'minitest/autorun'
require_relative 'game'
require_relative 'player'
require_relative 'board'

class TestGame < Minitest::Test
  def setup
    @game = Game.new
    @game.instance_variable_set(:@board, Board.new)
    @game.instance_variable_set(:@players, [Player.new("Alice", "X"), Player.new("Bob", "O")])
  end

  def test_switch_player
    assert_equal @game.players[0], @game.current_player
    @game.send(:switch_player)
    assert_equal @game.players[1], @game.current_player
  end

  def test_play_turn
    @game.send(:play_turn, "A1")
    assert_equal "X", @game.board.instance_variable_get(:@cases)["A1"]
  end

  def test_game_over
    @game.board.changer_case("A1", "X")
    @game.board.changer_case("A2", "X")
    @game.board.changer_case("A3", "X")
    assert @game.send(:game_over?)
  end
end
