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
  def stare(person)
    @statues << person
    person.turn_to_stone
    if statues.length > 3
      @statues.shift
    end
    @statues 
  end
end

class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end
  def turn_to_stone
    @stoned = true
  end
  def stoned?
    @stoned
  end
end
