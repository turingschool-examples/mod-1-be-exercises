require './lib/dish'

RSpec.describe Dish do
  it "exists" do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish).to be_a Dish
  end

  it "has_readable_attributes" do
  dish = Dish.new("Couscous Salad", :appetizer)
  
  expect(dish.name).to eq("Couscous Salad")
  expect(dish.category).to eq(:appetizer)
  end
  
end