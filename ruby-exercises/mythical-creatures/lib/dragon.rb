class Dragon
  attr_reader :name, :rider, :color, :hunger, :eat_counter

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger = true
    @eat_counter = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @eat_counter += 1
    @hunger = false if @eat_counter > 2
  end

end
