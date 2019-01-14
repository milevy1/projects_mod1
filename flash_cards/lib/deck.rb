class Deck
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def count
    self.cards.count
  end

  def cards_in_category(category)
    self.cards.select{ |card| card.category == category}
  end

  def total_categories_in_deck
    groups = self.cards.group_by{ |card| card.category }
    return groups.length
  end

  def categories_array
    self.cards.group_by{ |card| card.category }.keys
  end

end
