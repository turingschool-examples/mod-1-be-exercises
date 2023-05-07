class Pirate
    attr_reader :name, :job, :commit_heinous_act, :booty

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @commit_heinous_act = 0
        @booty = 0
    end

    def commit_heinous_act
        @commit_heinous_act += 1
    end

    def cursed?
        return true if @commit_heinous_act > 2
        false
    end

    def rob_ships
        @booty += 100
    end
end