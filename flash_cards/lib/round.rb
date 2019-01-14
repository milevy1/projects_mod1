class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    # Potential issue when run out of cards, hence if statement
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

  def start
    puts "Welcome! You're playing with #{self.deck.count} cards."
    puts "-------------------------------------------------"

    # Iterate until turns = how many cards are in deck
    while self.turns.length < self.deck.cards.length
      puts "This is card number #{self.turns.length + 1} out of #{self.deck.count}"
      puts self.current_card.question
      answer_temp = gets.chomp
      turn_temp = self.take_turn(answer_temp)
      puts turn_temp.feedback
    end

    puts "****** Game over! ******"
    puts "You had #{self.number_correct} correct guesses out of #{self.turns.length} for a total score of #{self.percent_correct}%."

    # Iterate until all categories have been displayed
    category_count = 0
    while category_count < self.deck.total_categories_in_deck
      category_temp = self.deck.categories_array[category_count]
      puts "#{category_temp} - #{percent_correct_by_category(category_temp)} % correct"
      category_count += 1
    end

  end

end
