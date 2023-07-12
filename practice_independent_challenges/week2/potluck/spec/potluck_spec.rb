require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do 
  describe "iteration_2" do 
    it "is an instance of Potluck" do
      potluck = Potluck.new("7-13-18")
      
      expect(potluck).to be_a(Potluck)
    end
    
    it "has a date instance variable" do 
      potluck = Potluck.new("7-13-18")
      
      expect(potluck.date).to eq("7-13-18")
    end
    
    it "has an empty dish instance variable" do 
      potluck = Potluck.new("7-13-18")
      
      expect(potluck.dishes).to eq([])
    end
    
    it "has a method to add dish objects to dish list" do 
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
      require 'pry';binding.pry
      
      expect(potluck.dishes.length).to eq(2)
    end
  end
end