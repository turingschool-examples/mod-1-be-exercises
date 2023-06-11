class Hobbit
    attr_reader :name, :disposition, :age, :has_ring, :height 
    def initialize(name, disposition = "homebody", age = 0, height = 80)
        @name = name
        @disposition = disposition
        @age = age
        @has_ring = assign_ring_on_creation
        @height = height
    end
    def assign_ring_on_creation
        # require "pry"; binding.pry
        return true if self.name.downcase == "frodo"
        false
    end

    def celebrate_birthday
        @age += 1
        # if @age >= 101
        #     @is_old = true
        # end 
        # if @age >= 33
        #     @is_adult = true
        # end
    end
    def adult?
        #refactored version of the below conditional statement 
        return false if @age <= 32
        true
        # if @age <= 32
        #     false
        # else
        #     true
        # end  
    end
    def old?
        return false if @age < 101
        true
    end 
    def has_ring?
        has_ring
    end
    def is_short?
        return true if height < 100
        false 
    end     
end 
