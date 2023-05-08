class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name = 'Nymeria', home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.count < 2
    @starks_to_protect << stark
    end
    stark.safe = true
    @hunts_white_walkers = false
  end

# Refactor to use guard clause.  I honestly like the other way better.

# def protects(stark)
#     return @hunts_white_walkers = false unless @starks_to_protect.count < 2 && stark.location == @home
#     @starks_to_protect << stark
#     stark.safe = true
#     @hunts_white_walkers = false
# end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    @starks_to_protect.clear
    stark.safe = false
    stark
  end
end

class Stark
  attr_reader :name, :location, :house_words
  attr_writer :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end
end
