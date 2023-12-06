# The method below returns an array of the brothers names in all caps using the method #each.
# # Your Task: Update this method to use #map. 

def kennedy_brothers
    brothers = ["Robert", "Ted", "Joseph", "John"]
    brothers.map do |brother|
      brother.upcase
    end
end

p kennedy_brothers