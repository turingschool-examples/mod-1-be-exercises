class Potluck
    attr_reader :date, :dishes

    def initialize(date)
        @date = date.to_s
        @dishes = []
    end

    def add_dish(dish_name)
        @dishes << dish_name
    end
    
end