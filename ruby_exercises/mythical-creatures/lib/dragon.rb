class Dragon
    attr_reader :name, :color, :rider
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @eat_counter = 0
    end
    def eat
        @eat_counter += 1
    end
    def hungry?
        return false if @eat_counter >= 3
        true
    end


end