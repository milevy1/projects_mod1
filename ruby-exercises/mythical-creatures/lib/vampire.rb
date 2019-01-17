class Vampire
  attr_reader :name, :pet, :thirst
  attr_writer :thirst

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirst = true
  end

  def thirsty?
    self.thirst
  end

  def drink
    self.thirst = false
  end

end
