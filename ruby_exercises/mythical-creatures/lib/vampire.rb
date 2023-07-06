class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def bat? 
        return true if pet == "bat"
        false 
    end

    def drink
        @thirsty = false
    end


end
