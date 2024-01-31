class Centaur
    attr_reader :name,
                :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = 0
        @standing = true
        @laying = false
        @rested = false
        @sick = false
    end

    def shoot
        if @cranky < 3 && @standing == true
            @cranky += 1
            "Twang!!!"
        else
            "NO!"
        end
    end

    def run
        if @standing == true
            @cranky += 1
            "Clop clop clop clop!"
        else
            "NO!"
        end
    end

    def cranky?
        if @cranky < 3
            false
        else
            true
        end
    end

    def standing?
        @standing 
    end

    def laying?
        @laying
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def sleep
        if @standing == true
            "NO!"
        else
            @cranky = 0
            "Zzzz"
        end    
    end

    def being_sick
        @sick
    end

    def rested?
        @rested
    end
    
    def drink_potion
        if @rested != true && @standing == true
            @rested = true  
        elsif @rested == true && @standing == true
            @sick = true
            "I am too ill to carry on!"
        else
            "NO!"
        end
    end


end