# class Medusa
#   attr_reader :name, :statues
#   def initialize(name, statues = [])
#     @name = name 
#     @statues = statues
#   end
#   def stare(person)
#     @statues << person
#   end
# end


# class Person
#   attr_reader :name, :stoned
#   def initialize(name)
#     @name = name
#     @stoned = Medusa.statues.include?(name)
#   end
#   def stoned? 
#     @stoned
#   end
# end

# class Medusa
#   attr_reader :name, :statues
#   def initialize(name)
#     @name = name 
#     @statues = []
#   end
#   def stare(person)
#     @statues << person
#   end
# end

# class Person
#   attr_reader :name, :stoned
#   def initialize(name)
#     @name = name
#     @stoned = false
#     @been_stared = false 
#   #   @stoned = Medusa.statues.include?(name)
#   # end
#   end
#   def got_stared
#     if Medusa.statues.include?(name)
#       @been_stared = true
#     end
#   end
#   def stoned?
#     @stoned
#   end
# end
#THE ABOVE CODE IS GARBAGE THAT LED ME TO THE BELOW

class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end
  def stare(victim)
      @statues << victim
      victim.make_stoned
      process_extra_victims
       
    # if statues.length <= 2
    #   # @statues.shift
    #   # victim.stoned = true
    #   victim.make_stoned
    # else 
    #   old_victim = @statues.shift
    #   # old_victim.stoned = false
    #   old_victim.make_unstoned
    #   victim.make_stoned 
    #   @statues << victim   
    end

    def process_extra_victims
      return false if statues.count <= 3
      old_victim = statues.shift
      old_victim.make_unstoned
    end
    # @statues 
    #thought this was necessary to return the values of the statues method, but the above does it just fine
end

class Person
  attr_reader :name
  # attr_accessor :stoned 
  def initialize(name)
    @name = name
    @stoned = false
  end
  def make_unstoned
    @stoned = false 
  end
  def make_stoned
    @stoned = true 
  end
  def stoned?
    @stoned
  end
end
