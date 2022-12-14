require './lib/pet'

RSpec.describe Pet do
  before(:each) do
    @samson = Pet.new({name: "Samson", type: :dog})
  end

  it "exists" do
    expect(@samson).to be_instance_of(Pet)
  end

  it "has attributes" do
    expect(@samson.name).to eq("Samson")
    expect(@samson.type).to eq(:dog)
  end

  it "is not fed by default" do
    expect(@samson.fed?).to be(false)
  end

  it "can be fed" do
    @samson.feed
    expect(@samson.fed?).to be(true)
  end

end
