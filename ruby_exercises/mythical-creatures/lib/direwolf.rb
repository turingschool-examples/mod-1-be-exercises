class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home="Beyond the Wall",  size="Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        @starks_to_protect << @stark if @home == stark.location
    end
end

class Stark
    attr_reader :stark, :location
    def initialize(stark, location="Winterfell")
        @stark = stark
        @location = location
    end

    def name
        @stark
    end
end