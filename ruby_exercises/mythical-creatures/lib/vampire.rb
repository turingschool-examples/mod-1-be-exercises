class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet)
    @name = name 
    @pet = pet
    @thirsty = true 
    end 
    def drink
        @thirsty = false
    end 
end 