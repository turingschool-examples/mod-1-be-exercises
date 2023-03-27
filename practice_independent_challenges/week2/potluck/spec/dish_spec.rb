require './lib/dish'

RSpec.describe Dish do
  it "exists" do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish).to be_a Dish
  end
  
  
end