class AnimalLover
  attr_reader :id, :first_name, :last_name, :age

  def initialize(id, first_name, last_name, age)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    @first_name + " " + @last_name
  end
end