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
    categorized_dishes = []

    @dishes.each do |dish|
      categorized_dishes << dish if dish.category == category
    end
    categorized_dishes
  end

  def menu
    menu_hash = {}

    @dishes.each do |dish|

      category = dish.category
      category_key = category

      menu_hash[category_key] ||= []
      menu_hash[category_key] << dish.name
    end

    menu_hash
  end

  def ratio(category)
    quantity_in_category = get_all_from_category(category).length.to_f
    total_dishes = @dishes.length.to_f

    category_ratio = quantity_in_category/total_dishes * 100
    category_ratio

  end
end