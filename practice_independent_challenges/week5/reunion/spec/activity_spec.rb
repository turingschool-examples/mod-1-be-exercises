require './lib/activity'

RSpec.describe Activity do 
  before :each do 
    @activity = Activity.new("Brunch")
  end

  it 'exists with attributes' do 
    expect(@activity).to be_an(Activity)
    expect(@activity.name).to eq("Brunch")
  end

  it 'starts with no participants as a hash' do 
    expect(@activity.participants).to be_a(Hash)
  end

  it 'adds participants to the activity' do 
    @activity.add_participant("Maria", 20)
    expect(@activity.participants).to eq({"Maria" => 20})
  end

  it 'returns the total cost of the activity' do
    @activity.add_participant("Maria", 20)

    expect(@activity.total_cost).to eq(20)

    @activity.add_participant("Luther", 40)
    expect(@activity.total_cost).to eq(60)
  end
end