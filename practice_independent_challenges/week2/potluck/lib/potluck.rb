class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish| 
      dish.category == category
    end
  end

  def get_names(category)
    appetizers = get_all_from_category(category)
    names = []
    appetizers.map do |dish|
      names << dish.name
    end
    names
  end

  def menu
    {appetizers: get_names(:appetizer), 
      entrees: get_names(:entree), 
      desserts: get_names(:dessert)}
  end

  def ratio(category)
    category_count = get_all_from_category(category).length
    dishes_count = @dishes.length
    ratio = (category_count.to_f / dishes_count.to_f) * 100
    ratio.round(2)
  end
end