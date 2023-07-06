class Student
    attr_reader :name, :cookies
def initialize(name)
    @name = name
    @cookies = []
end

def add_cookie(cookie)
    #require 'pry'; binding.pry #This opens pry and allows you to test everything above
    @cookies << cookie
end
end