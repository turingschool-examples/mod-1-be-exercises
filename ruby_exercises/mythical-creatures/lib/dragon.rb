class Dragon
    attr_reader :name, :color, :rider, :hungry, :belly

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @belly = 0
    end

    def eat
        @belly +=1
    end

    def hungry?
        return true if @belly < 3
        false
    end

end