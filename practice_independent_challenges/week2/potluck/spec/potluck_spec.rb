require './lib/potluck'
require './lib/dish'

describe Potluck do
    it 'exists' do
        potluck = Potluck.new("7-13-18")

        expect(potluck).to be_instance_of(Potluck)
    end

    it 'has attributes date and dishes' do
        potluck = Potluck.new("7-13-18")

        expect(potluck.date).to eq("7-13-18")
        expect(potluck.dishes).to eq([])
    end

    it 'can add dishes' do
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        potluck = Potluck.new("7-13-18")

        potluck.add_dish(couscous_salad)
        potluck.add_dish(cocktail_meatballs)

        expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    end

    it 'has categories' do
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        vanilla_icecream = Dish.new("Vanilla Ice Cream", :dessert)
        candy_salad = Dish.new("Candy Salad", :dessert)
        potluck = Potluck.new("7-13-18")

        potluck.add_dish(couscous_salad)
        potluck.add_dish(vanilla_icecream)
        potluck.add_dish(candy_salad)

        expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad])
        expect(potluck.get_all_from_category(:dessert)).to eq([vanilla_icecream, candy_salad])
    end

    it 'has a menu' do
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        vanilla_icecream = Dish.new("Vanilla Ice Cream", :dessert)
        summer_pizza = Dish.new("Summer Pizza", :appetizer)
        candy_salad = Dish.new("Candy Salad", :dessert)
        roast_pork = Dish.new("Roast Pork", :entre)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        potluck = Potluck.new("7-13-18")

        potluck.add_dish(couscous_salad)
        potluck.add_dish(vanilla_icecream)
        potluck.add_dish(candy_salad)
        potluck.add_dish(roast_pork)
        potluck.add_dish(summer_pizza)
        potluck.add_dish(cocktail_meatballs)

        expected_result = {:appetizer=>["Couscous Salad", "Summer Pizza"],
        :entre=>["Cocktail Meatballs", "Roast Pork"],
        :dessert=>["Candy Salad", "Vanilla Ice Cream"]}

        expect(potluck.menu).to eq(expected_result)
    end
end