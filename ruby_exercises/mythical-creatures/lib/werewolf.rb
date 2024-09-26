class Werewolf
    attr_reader :name, :location

    def initialzie(name, location=nil)
        @name = name
        @location = location
        @human = true
        @hungry = false
    end

    def human?
        @human
    end

    def wolf?
        !@human
    end

    def change!
        if @human 
            @human = !@human
            @hungry = !@hungry
        else
            @human = !@human
        end
    end

    def hungry?
        @hungry
    end

    def eat(victim)
        if !@human
            @hungry = !@hungry
        end
    end
end
            