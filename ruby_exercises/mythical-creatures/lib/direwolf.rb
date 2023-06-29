class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name 
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true 
  end
  def protects(stark)
    if self.home == stark.location 
    @starks_to_protect << stark
    stark.make_safe
    end
    if starks_to_protect.length > 2
      starks_to_protect.pop
    end
  end 
  def hunts_white_walkers?
    # if self.starks_to_protect.length > 0
    #   @hunts_white_walkers = false
    # else 
    #   @hunts_white_walkers = true 
    # end
    #refactored like this using ternary operator
    @hunts_white_walkers = self.starks_to_protect.length > 0 ? false : true
  end
  def leaves(stark)
    starks_to_protect.delete(stark)
    stark.make_unsafe
    return stark
  end
end




class Stark
  attr_reader :name, :location 
  # attr_accessor :safe
  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end
  def safe? 
    @safe
  end
  def make_unsafe
    @safe = false
  end
  def make_safe 
    @safe = true 
  end
  def house_words
    "Winter is Coming" if @safe == false 
  end
end