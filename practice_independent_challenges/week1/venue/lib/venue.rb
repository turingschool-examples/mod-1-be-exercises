class Venue
  attr_reader :name,
              :capacity,
              :patrons
  
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(customer)
    @patrons << customer
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end
end
