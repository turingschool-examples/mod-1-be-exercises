class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end

  def over_capacity?
   if @patrons.length > capacity
    true
   else 
    false
   end
  end

  def kick_out
    while @patrons.length > capacity
      @patrons.pop(1)    
    end
  end
end
