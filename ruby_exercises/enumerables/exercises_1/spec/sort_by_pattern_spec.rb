RSpec.describe 'sort_by pattern' do

  it 'sorts alphabetically' do
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.sort_by do |word|
      transformed << [word.downcase, word] # This lined of code essentially creates a downcase key that can be used to sort (word.downcase), but then the original array can be returned (word)
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["Bacon", "broccoli", "candy", "Carrots", "FISH"])
  end

  it 'alphabetically by last letter' do
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.sort_by do |thing|
      transformed << [thing[-1],thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, thing|
      sorted << thing
    end
    expect(sorted).to eq(["sponge", "pill", "water", "glass", "box"])
  end

  it 'sort by distance' do
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    distances.sort_by do |distance|
      transformed << [distance.to_i,distance]
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, distance|
      sorted << distance
    end
    expect(sorted).to eq(["1cm", "2cm", "4cm", "9cm", "30cm"])
  end

  it 'by length' do
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    transformed = []
    words.sort_by do |word|
      transformed << [word.length,word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    transformed = []
    prices.sort_by do |price|
      if price < 10 
        transformed << [10 - price, price]
      elsif price > 10
        transformed << [price - 10, price]
      end
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, price|
      sorted << price
    end
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    transformed = []
    prices.sort_by do |price|
      transformed << [price - price.to_i, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.sort_by do |sort_key, price|
      sorted << price
    end
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
