require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do 
  before :each do 
    @reunion = Reunion.new("1406 BE")
    @activity_1 = Activity.new("Brunch")
  end

  it 'exists with attributes' do 
    expect(@reunion).to be_a(Reunion)
    expect(@reunion.name).to eq("1406 BE")
  end

  it 'starts with no activities as an array' do 
    expect(@reunion.activities).to eq([])

    @reunion.add_activity(@activity_1)

    expect(@reunion.activities).to eq([@activity_1])
  end
end