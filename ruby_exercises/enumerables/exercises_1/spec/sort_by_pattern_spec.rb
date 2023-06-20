RSpec.describe 'sort_by pattern' do

  it 'sorts alphabetically' do
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    # require "pry"; binding. pry 
    transformed = transformed.sort
    # require "pry"; binding. pry 
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["Bacon", "broccoli", "candy", "Carrots", "FISH"])
  end

  it 'alphabetically by last letter' do
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.each do |thing|
      # transformed << [thing.]
      last_letter = thing[-1]
      transformed << [last_letter, thing]
      # require "pry"; binding. pry 
    end
    transformed = transformed.sort
    # require "pry"; binding. pry
    sorted = []
    transformed.each do |sort_key, thing|
      sorted << thing
    end
    expect(sorted).to eq(["sponge", "pill", "water", "glass", "box"])
  end

  it 'sort by distance' do
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    # Your code goes here
    distances.each do |distance|
      i = distance[0, 2].to_i
      transformed << [i, distance]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      sorted << distance
    end
    expect(sorted).to eq(["1cm", "2cm", "4cm", "9cm", "30cm"])
  end

  it 'by length' do
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    # Your code goes here
    transformed = []
    words.each do |word|
      word_length = word.length
      transformed << [word.length, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end

    expect(sorted).to eq(["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      diff = price - 10
      transformed << [diff.abs, price]
    end
    # Your code goes here
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, price|
      sorted << price 
    end
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    # Your code goes here
    transformed = []
    prices.each do |price| 
      cents = price - price.to_i
      #could also use price - price.floor
      transformed << [cents, price]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, price|
      sorted << price 
    end
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
