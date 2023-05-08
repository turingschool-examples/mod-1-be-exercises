class Hobbit
  attr_reader :name, :disposition, :age, :has_ring, :is_short

  def initialize(name, disposition = "homebody", is_short = true)
    @name = name
    @disposition = disposition
    @age = 0
    @has_ring = has_ring
    @is_short = is_short
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return true if @age > 32
    false
  end

  def old?
    return true if @age >= 101
    false
  end

  def has_ring?
    return true if @name == 'Frodo'
    false
  end

  def is_short?
    @is_short
  end
end