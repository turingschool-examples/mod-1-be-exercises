class Wizard
    attr_reader :name, :bearded, :spell_counter, :rested

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @spell_counter = 0
        @rested = true
    end

    def bearded?
        bearded
    end

    def incantation(root_power)
        "sudo #{root_power}"
    end

    def cast
        @spell_counter += 1
        "MAGIC MISSILE!"
    end

    def rested?
        return false if @spell_counter > 2
        true
    end
end