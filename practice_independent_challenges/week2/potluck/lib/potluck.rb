class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish_name)
    # @dishes << dish_name
    @dishes.push(dish_name)
  end

  def get_all_from_category(category_name)
    # OPTION 1
    # dish_by_category = []
    # @dishes.each do |dish|
    #   if dish.category == category_name
    #     dish_by_category.push(dish)
    #   end
    # end
    # dish_by_category

    # OPTION 2
    # dish_by_category = @dishes.map do |dish|
    #   if dish.category == category_name
    #     dish
    #   end
    # end

    # OPTION 3
    # @dishes.select do |dish|
    #   dish.category == category_name
    # end

    # OPTION 4
    @dishes.find_all do |dish|
      dish.category == category_name
    end
  end

  def menu
    # OPTION 1
    # full_menu = { appetizers: [], entres: [], desserts: [] }
    # @dishes.each do |dish|
    #   if dish.category == :appetizer
    #     full_menu[:appetizers].push(dish.name)
    #   elsif dish.category == :entre
    #     full_menu[:entres].push(dish.name)
    #   else
    #     full_menu[:desserts].push(dish.name)
    #   end
    # end
    # full_menu

    # OPTION 2
    app_array = get_all_from_category(:appetizer).map do |dish|
      dish.name
    end

    entr_array = get_all_from_category(:entre).map do |dish|
      dish.name
    end

    dess_array = get_all_from_category(:dessert).map do |dish|
      dish.name
    end

    { 
      appetizers: app_array,
      entres: entr_array,
      desserts: dess_array
    }
  end

  def ratio(category_name)
    (get_all_from_category(category_name).size.to_f / @dishes.size)*100
  end
end