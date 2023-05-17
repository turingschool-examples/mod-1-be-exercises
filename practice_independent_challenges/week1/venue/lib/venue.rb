class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = 4
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    @patrons.map { |patron| patron.upcase }
  end

  def over_capacity?
    return false unless @patrons.count > @capacity
    true
  end

  def kick_out
    until @patrons.count == @capacity
      @patrons.pop
    end
  end
end
