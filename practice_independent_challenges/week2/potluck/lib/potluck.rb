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
    #explore this method more but doesn't alphabetize and also
    #doens't pluralize the hash key
    # menu_hash = {}

    # @dishes.each do |dish|

    #   category = dish.category
    #   category_key = category

    #   menu_hash[category_key] ||= []
    #   menu_hash[category_key] << dish.name

    #   menu_hash
    entre_names = []
    entres = get_all_from_category(:entre)
    entres.each do |entre|
      entre_names << entre.name
      entre_names.sort!
    end
    appetizer_names = []
    appetizers = get_all_from_category(:appetizer)
    appetizers.each do |appetizer|
      appetizer_names << appetizer.name
      appetizer_names.sort!
    end
    dessert_names = []
    desserts = get_all_from_category(:dessert)
    desserts.each do |dessert|
      dessert_names << dessert.name
      dessert_names.sort!
    end

    menu_hash = {
      :appetizers=> appetizer_names,
      :entres=> entre_names,
      :desserts=> dessert_names
    }
    
  end

  def ratio(category)
    quantity_in_category = get_all_from_category(category).length.to_f
    total_dishes = @dishes.length.to_f

    category_ratio = quantity_in_category/total_dishes * 100
    category_ratio
    
  end
end