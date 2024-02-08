class Potluck
    attr_reader :date, :dishes

    def initialize(date)
        @date = date.to_s
        @dishes = []
       
    end

    def add_dish(dish_name)
        @dishes << dish_name
    end

    def get_all_from_category(requested_category)
        
        @dishes.find_all do |dish|
            dish.category == requested_category
        end
    end

    def menu
        apps = get_all_from_category(:appetizer)
        entres = get_all_from_category(:entre)
        desserts = get_all_from_category(:dessert)
        {appetizer: apps, 
         entre: entres, 
         dessert: desserts
        }
    end
end