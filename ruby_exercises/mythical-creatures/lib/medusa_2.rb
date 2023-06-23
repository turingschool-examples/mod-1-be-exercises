class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end
  def stare(victim)
    @statues << victim
    victim.gets_stoned
    # require "pry"; binding.pry
    process_extra_victims
    # require "pry"; binding.pry
  end
  def process_extra_victims
    return false if statues.count <= 3
    old_victim = statues.shift
    old_victim.gets_unstoned
  end
end

class Person
  attr_reader :name
  def initialize(name)
    @name = name
    @stoned = false
  end
  def gets_unstoned
    @stoned = false 
  end
  def gets_stoned
    @stoned = true 
  end
  def stoned?
    @stoned
  end

end