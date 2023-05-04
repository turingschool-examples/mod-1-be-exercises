class Wizard
    attr_reader :name, :bearded, :rested, :cast_count

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @cast_count = 0
    end

    def bearded?
        @bearded
    end

    def incantation(words)
        "sudo #{words}"
    end

    def rested?
        @rested
    end

    def cast
        @cast_count += 1
        if @cast_count == 3
            @rested = false
        end
        "MAGIC MISSILE!"
    end
end