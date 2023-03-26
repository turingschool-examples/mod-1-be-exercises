require 'rspec'
require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do 
  # before(:each) do
    # @potluck = Potluck.new("7-13-18")
  # end
  let(:potluck) { potluck = Potluck.new("7-13-18") }

  let(:couscous_salad) { Dish.new("Couscous Salad", :appetizer) }
  let(:summer_pizza) { Dish.new("Summer Pizza", :appetizer) }
  let(:roast_pork) { Dish.new("Roast Pork", :entre) }
  let(:cocktail_meatballs) { Dish.new("Cocktail Meatballs", :entre) }
  let(:candy_salad) { Dish.new("Candy Salad", :dessert) }
  let(:bean_dip) { Dish.new("Bean Dip", :appetizer) }
  
  it "exists & has attributes" do
    expect(potluck).to be_an_instance_of(Potluck)
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end

  it "#add_dish" do
    expect(potluck.dishes.length).to eq(0)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end

  it "#get_all_from_category" do
    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])

    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])
  
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
    expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end

  it "#menu" do
    potluck.add_dish(couscous_salad)
    # expect(potluck.dishes).to eq([couscous_salad])

    potluck.add_dish(summer_pizza)
    # expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

    potluck.add_dish(roast_pork)
    # expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])
  
    potluck.add_dish(cocktail_meatballs)
    # expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

    potluck.add_dish(candy_salad)
    # expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])

    potluck.add_dish(bean_dip)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad, bean_dip])

    menu_result = {
      appetizers: ["Couscous Salad", "Summer Pizza", "Bean Dip"],
      entres: ["Roast Pork", "Cocktail Meatballs"],
      desserts: ["Candy Salad"]
    }

    expect(potluck.menu).to eq(menu_result)
  end

  it "#ratio" do
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)

    expect(potluck.ratio(:appetizer)).to eq(50.0)
  end
end