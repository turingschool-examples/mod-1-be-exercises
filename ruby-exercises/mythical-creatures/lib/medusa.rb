class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        @statues.push(victim)
        victim.cursed_to_stone
        process_extra_victims
    end

    def process_extra_victims
        return false if statues.count <= 3
        old_victims = @statues.shift
        old_victims.remove_curse
    end
end

class Person
    attr_reader :name, :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def cursed_to_stone
        @stoned = true
    end

    def remove_curse
        @stoned = false
    end

    def stoned?
        stoned
    end
end
