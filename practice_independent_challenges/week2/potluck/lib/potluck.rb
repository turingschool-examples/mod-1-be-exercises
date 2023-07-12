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
end