class human
    attr_reader :name

    def initialzie(name="Jane")
        @name = name
        @encounter_num = 0
    end

    def encounter
        @encounter_num += 1
    end
end
