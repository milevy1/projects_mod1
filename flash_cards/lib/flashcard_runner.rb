require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

# Iteration 3 - hard coding new cards
# card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
# card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
# card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
# card_4 = Card.new("What is the NFL football mascot in Chicago?", "Bears", :Sports)
# deck = Deck.new([card_1, card_2, card_3, card_4])
# Iteration 3 end

# Iteration 4 - read in cards from txt file
filename = "./lib/cards.txt"
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
# Iteration 4 end

round = Round.new(deck)
round.start
