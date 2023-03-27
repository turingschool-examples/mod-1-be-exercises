require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it "exists" do
  potluck = Potluck.new("7-13-18")

  expect(potluck).to be_a Potluck
  end

  it "has_readable_attributes" do
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end

end