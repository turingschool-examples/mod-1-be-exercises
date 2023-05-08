class Werewolf
  attr_reader :name, :location

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end  

  def human? 
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def consume!(victim)
    if @human == true
        return
    else
        victim.kill && @hungry = false
    end
  end
end

class Victim
  attr_reader :status

  def initialize
    @status = :alive
  end

  def status?
    @status
  end

  def kill
    @status = :dead
  end
end