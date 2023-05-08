class Dragon
  attr_reader :name, :color, :rider, :has_food

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @has_food = 0
  end

  def eat
    @has_food += 1
  end

  def hungry?
    return false if @has_food >= 3
    true
  end
end