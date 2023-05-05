class Pirate
    attr_reader :name, :job, :booty
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @dirty_deeds = 0
        @booty = 0

    end

    def commit_heinous_act
        @dirty_deeds += 1
    end

    def cursed?
        return true if @dirty_deeds > 2
            false
    end

    def pilage_and_plunder
        @booty += 100
    end

    def has_booty?
        return false if @booty < 1
        true
    end


end
    