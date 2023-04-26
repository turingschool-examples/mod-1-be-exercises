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
        if @eat_counter >= 3
            false
        else true
        end
    end


end