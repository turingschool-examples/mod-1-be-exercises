class Student
  attr_reader :name, :cookies
  def initialize(name)
    @name = name 
    @cookies = []
  end

  def add_cookie(type)
    @cookies << type
  end
end