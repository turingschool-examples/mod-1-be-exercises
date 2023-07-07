# class Person
#   def greeting
#     "Hello! My name is #{name}"
#   end

#   def name
#     "Bob Ross"
#   end
# end

# person = Person.new

# puts person.greeting
# puts greeting




































class Person
  # attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hello! My name is #{name}. I am a #{@job}."
  end
end

@job = "Painter"
person = Person.new("Bob Ross")

p person.greeting
p @name
p @job
