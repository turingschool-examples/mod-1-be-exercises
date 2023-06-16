class Dragon
  attr_reader :name, :color, :rider, :hungry, :times_eaten
  def initialize(name, color, rider)
    @name = name 
    @color = color
    @rider = rider
    @hungry = true
    @times_eaten = 0
  end
  def hungry?
    @times_eaten >= 3 ? false : true 
  end
  def eat
    @times_eaten += 1
  end
end

# dragon = Dragon.new("Jeff", "Purple", "rider")
# 4.times {dragon.eat}
# p dragon.times_eaten