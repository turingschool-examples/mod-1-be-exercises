require 'rspec'
require './lib/magical_pet'

RSpec.describe MagicalPet do
  before :each do
    @fluffy = MagicalPet.new(1, 'Fluffy', 1)
  end

  it "exists" do
    expect(@fluffy).to be_a MagicalPet
  end

  it "has attributes of id, name, and pet_owner_id" do
    expect(@fluffy.id).to eq 1
    expect(@fluffy.name).to eq "Fluffy"
    expect(@fluffy.pet_owner_id).to eq 1
  end
end