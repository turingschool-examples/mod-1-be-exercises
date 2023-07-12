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
      # require 'pry';binding.pry
      expect(potluck.dishes.length).to eq(2)
    end
  end
  
  describe "iteration_3" do
    it "has a method to retrieve dishes by category" do 
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)

      expect(potluck.dishes.length).to eq(5)
      expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
      expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
      expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end 
  end
  describe "iteration_4" do 
    it "has a menu that returns a has by category of dish" do 
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      bean_dip = Dish.new("Bean Dip", :appetizer)
      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)
      potluck.add_dish(bean_dip)          
      # require 'pry';binding.pry

      expect(potluck.menu).to eq({:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entres=>["Cocktail Meatballs", "Roast Pork"],:desserts=>["Candy Salad"]})
      # require 'pry';binding.pry
      expect(potluck.ratio(:appetizer)).to eq(50.0)
      
    end
  end
end