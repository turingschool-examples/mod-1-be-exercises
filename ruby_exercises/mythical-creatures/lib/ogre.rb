# class Ogre
#   attr_reader :name, :home
#   def initialize(name, home = "Swamp")
#     @name = name 
#     @home = home
#     @encounter_counter = 0
#   end
#   def encounter(human)
#     @encounter_counter += 1
#   end
# end

# class Human 
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end
  def encounter(homosapian)
      homosapian.encounter(self)
    @encounter_counter += 1
  end
  def swing_at(target)
      @swings += 1
      target.hit if swings == 2
  end
  def apologize(target)
      target.knocked_out = false
  end
end

class Human
  attr_reader :name, :encounter_counter, :notices_ogre, :knocked_out
  attr_accessor :knocked_out
  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end
  def encounter(the_ogre)
    @encounter_counter += 1
      if encounter_counter % 3 == 0
          @notices_ogre = true
          the_ogre.swing_at(self)
      else
          @notices_ogre = false
      end
    end
  def notices_ogre?
        @notices_ogre    
  end
  def hit
      @knocked_out = true
  end
  def knocked_out?
      @knocked_out
  end
end

ogre1 = Ogre.new("Zanzabar")

puts ogre1.name
puts ogre1.encounter_counter

p ogre1
