class Turn
  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    # This method returns a boolean indicating if
    # the guess matched the answer on the Card.
    if self.guess == self.card.answer
      true
    else
      false
    end
  end

  def feedback
    # This method either returns "Correct!" or "Incorrect."
    # based on whether the guess was correct or not.
    if self.correct?
      "Correct!"
    else
      "Incorrect."
    end
  end

end
