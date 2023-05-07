class Ogre
    attr_reader :name, :home, :swings

    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
    end

    def encounter(human)
        human.increase_encounter_counter
        if human.notices_ogre?
            swing_at(human)
        end
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.wakes_up
        @swings = 0
    end
end

class Human
    attr_reader :name, :encounter_counter

    def initialize(name = 'Jane')
        @name = name
        @encounter_counter = 0
    end

    def increase_encounter_counter
        @encounter_counter += 1
    end

    def notices_ogre?
        return @encounter_counter % 3 == 0
    end

    def knocked_out?
        return @encounter_counter >= 2
    end

    def wakes_up
        @encounter_counter = 0
    end
end