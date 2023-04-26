class Vampire
    attr_reader :name, :pet
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
        @drink_counter = 0
    end
    def drink
        @drink_counter += 1
    end
    def thirsty
        return false if @drink_counter >= 1
        true
    end

end    