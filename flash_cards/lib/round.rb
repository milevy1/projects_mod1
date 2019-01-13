class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    # Potential issue when run out of cards
    if self.turns.length == self.deck.cards.length
      puts "You are out of cards"
    else
    # Current card starts with index 0,
    # As turns are taken and stored in @turns,
    # current card index increases
      self.deck.cards[self.turns.length]
    end
  end

  def take_turn(guess)

    # create a new Turn object with the appropriate guess and Card.
    turn_temp = Turn.new(guess, self.current_card)
    # It should store this new Turn,
    self.turns << turn_temp
    # as well as return it from the take_turn method.
    return turn_temp
    # Also, when the take_turn method is called, the Round should move
    # on to the next card in the deck.
  end

  def number_correct
    self.turns.count{ |turn| turn.correct? }
  end

  def number_correct_by_category(category)
    self.turns.select{ |turn| turn.card.category == category }.count{ |turn| turn.correct? }
  end

  def percent_correct
    100.0 * self.number_correct / self.turns.length
  end

  def percent_correct_by_category(category)
    100.0 * self.number_correct_by_category(category) / self.turns.select{ |turn| turn.card.category == category }.length
  end

end
