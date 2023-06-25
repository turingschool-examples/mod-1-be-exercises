class Centaur
  attr_accessor :name, :breed, :rested, :sick 
  def initialize(name, breed)
    @breed = breed
    @name = name
    @cranky = false
    @standing = true
    @action_counter = 0
    @rested = false 
    @sick = false 
  end
  def shoot
    if @cranky == true || @standing == false
      "NO!"
    else
      @action_counter += 1
      set_cranky
      "Twang!!!"
    end
  end
  def run
    if @standing == false 
      "NO!"
    else 
      @action_counter += 1
      set_cranky
      "Clop clop clop clop!"
    end
  end
  def sleep 
    if @standing == true 
      "NO!"
    else
      @cranky = false 
      @action_counter = 0
    end
  end
  def lay_down
    @standing = false 
  end
  def stand_up
    @standing = true 
  end
  def cranky?
    @cranky
  end
  def standing? 
    @standing
  end
  def laying? 
    !@standing
  end
  def set_cranky
    if @action_counter >= 3
      @cranky = true 
    end
  end
  def drinks_potion
    if @standing == true
        if @rested == true 
          @sick = true
        end
      @rested = true 
    else 
      "How could I possibly drink this while laying down?"
    end
  end
end