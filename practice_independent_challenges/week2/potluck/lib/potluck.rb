class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    dishes << dish
    dish
  end

  # def get_all_from_category(category)
  #   until potluck.dishes == []
  # end
end