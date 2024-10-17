require 'minitest/autorun'
require_relative 'application'

class TestApplication < Minitest::Test
  def test_perform
    app = Application.new
    assert app.perform  # On vérifie simplement que l'application s'exécute sans erreur.
  end
end
