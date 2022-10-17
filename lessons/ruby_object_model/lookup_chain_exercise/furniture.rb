require "./wood_things"
require './furniture_module'

class Furniture < WoodThings
  include FurnitureModule

  def soft
    "superclass"
  end

end
