class Werewolf
  attr_reader :name, :location, :victims_consumed
  def initialize(name, location = "")
    @name = name
    @location = location
    @is_human = true
    @hungry = false 
    @victims_consumed = []
  end
  def hungry?
    @hungry
  end
  def human? 
    @is_human
  end
  def change!
    # @is_human = !@is_human unless wolf? 
    # if human?
    #   @is_human = false
    # else
    #   @is_human = true 
    # end
    @is_human = !@is_human
    @hungry = !@is_human
  end
  def wolf?
    !@is_human
  end
  def eat(victim)
    return if human? #The method exits is the werewolf.human? == true 

    victim.status = :dead 
    @victims_consumed << victim  
    @hungry = false
  end
  # require "pry"; binding.pry
end