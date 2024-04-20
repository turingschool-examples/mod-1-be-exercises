class Ogre
    attr_reader :name, :home, :swings

    def initialzie(name, home="Swamp")
        @name = name
        @home = home
        @swings = 0
    end

    def encounter(human)
        human.greet_ogre
    end

    def
end