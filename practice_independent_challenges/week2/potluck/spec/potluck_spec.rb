require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
# Iteration 2
  it 'is an instance of Dish' do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_an_instance_of(Potluck)
  end

  it 'has a date' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq("7-13-18")
  end

  it 'has an empty array of dishes' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.dishes).to eq([])
  end

  it 'has the ability to add dishes' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end

# Iteration 3
  it 'has get all from category function' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad,summer_pizza])
    expect(potluck.get_all_from_category(:entree)).to eq([roast_pork,cocktail_meatballs])
  end

# Iteration 4
  it 'has a get appetizer names method' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_names(:appetizer)).to eq(["Couscous Salad", "Summer Pizza"])
  end

  it 'has a get entree names method' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_names(:entree)).to eq(["Roast Pork", "Cocktail Meatballs"])
  end

  it 'has a get appetizer names method' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.get_names(:dessert)).to eq(["Candy Salad"])
  end

  it 'has a menu function' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.menu).to eq({appetizers: ["Couscous Salad", "Summer Pizza"], entrees: ["Roast Pork","Cocktail Meatballs"], desserts: ["Candy Salad"]})
  end

  it 'has ratios for menu categories' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)

    expect(potluck.ratio(:appetizer)).to eq 50.0
    expect(potluck.ratio(:entree)).to eq 33.33
    expect(potluck.ratio(:dessert)).to eq 16.67
  end
end