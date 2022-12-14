require './lib/customer'
require './lib/pet'

RSpec.describe Customer do
  before(:each) do
    @joel = Customer.new("Joel", 2)
  end

  it "exists" do
    expect(@joel).to be_instance_of(Customer)
  end

  it "has attributes" do
    expect(@joel.name).to eq("Joel")
    expect(@joel.id).to eq(2)
  end

  it "starts with no pets" do
    expect(@joel.pets).to eq([])
  end

  it "can adopt new pets" do
    samson = Pet.new({name: "Samson", type: :dog})
    lucy = Pet.new({name: "Lucy", type: :cat})

    @joel.adopt(samson)
    @joel.adopt(lucy)
    expect(@joel.pets).to eq([samson, lucy])
  end

  it "has starting outstanding balance at 0" do
    expect(@joel.outstanding_balance).to eq(0)
  end

  it "can charge to increase oustanding balance" do
    @joel.charge(15)
    @joel.charge(7)

    expect(@joel.outstanding_balance).to eq(22)
  end

end
