require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

class CardGeneratorTest < Minitest::Test

  def test_card_generator_can_open_file
    cards = CardGenerator.new('./lib/cards.txt')

    assert_equal cards.filename, './lib/cards.txt'
  end

end
