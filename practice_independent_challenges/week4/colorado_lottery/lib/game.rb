class Game 
  attr_reader :name, 
              :cost
  
  def initialize(name, cost, national_drawing = false)
    @name = name
    @cost = cost 
    @national_drawing = national_drawing
  end

  def national_drawing?
    @national_drawing
  end
end