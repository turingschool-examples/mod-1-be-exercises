class Venue
   attr_reader :name, :capacity, :patrons

   def initialize(name, capacity)
      @name = name
      @capacity = capacity
      @patrons = []
   end

   def add_patron(patron)
      @patrons << patron
   end

   def yell_at_patrons
      yell_names = []
      @patrons.each do |patron|
         yell_names << patron.upcase 
      end
      yell_names
   end
end
