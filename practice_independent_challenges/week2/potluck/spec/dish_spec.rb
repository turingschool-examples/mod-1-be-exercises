require './lib/dish'
require 'pry'

RSpec.describe Dish do 
  describe "iteration_1" do 
    it "is an instance of Dish" do 
      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish).to be_a(Dish)
    end
    
    it "dish has a name" do 
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish.name).to eq("Couscous Salad")
    end
  end
end