class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.length < 2
      stark.protect_by(self)
      @starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    @starks_to_protect.empty?
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.unsafe
    stark
  end
end

class Stark
  attr_reader :name, :location, :house_words

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @protect_by = nil
    @house_words = "Winter is Coming"
  end

  def protect_by(direwolf)
    @protect_by = direwolf
  end

  def unsafe
    @protect_by = nil
  end

  def leaves(stark)
    @protect_by = nil
  end

  def safe?
    !@protect_by.nil?
  end
end