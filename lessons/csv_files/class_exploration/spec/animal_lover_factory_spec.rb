require "./lib/animal_lover_factory"

RSpec.describe AnimalLoverFactory do 
  it "should exist" do
    factory = AnimalLoverFactory.new

    expect(factory).to be_a AnimalLoverFactory
  end

  it "should parse csv to create animal lover objects" do
    factory = AnimalLoverFactory.new

    animal_lovers = factory.create_animal_lovers("./data/animal_lovers.csv")

    expect(animal_lovers.count).to eq(6) 
    expect(animal_lovers).to be_all(AnimalLover)
    first = animal_lovers.first

    expect(first.id).to eq 1
    expect(first.first_name).to eq "Rubeus"
    expect(first.last_name).to eq "Hagrid"
    expect(first.age).to eq(60)
  end
end