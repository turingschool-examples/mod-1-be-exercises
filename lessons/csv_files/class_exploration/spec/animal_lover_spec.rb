require 'rspec'
require './lib/animal_lover'

RSpec.describe AnimalLover do
  before :each do
    @hagrid = AnimalLover.new(1, 'Rubeus', 'Hagrid', 60)
  end

  it "exists" do
    expect(@hagrid).to be_a AnimalLover
  end

  it "has attributes of id, first_name, last_name, and age" do
    expect(@hagrid.id).to eq 1
    expect(@hagrid.first_name).to eq("Rubeus")
    expect(@hagrid.last_name).to eq("Hagrid")
    expect(@hagrid.age).to eq 60
  end

  it "has full name" do
    expect(@hagrid.full_name).to eq "Rubeus Hagrid"
  end
end