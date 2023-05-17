require './lib/dish'

RSpec.describe Dish do
# Iteration 1
  it 'is an instance of' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish).to be_an_instance_of(Dish)
  end

  it 'has a name' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish.name).to eq('Couscous Salad')
  end

  it 'has a category' do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish.category).to eq(:appetizer)
  end
end