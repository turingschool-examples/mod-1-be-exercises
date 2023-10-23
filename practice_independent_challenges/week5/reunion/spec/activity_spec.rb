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

  it 'splits the total evenly among participants' do 
    @activity.add_participant("Maria", 20)
    @activity.add_participant("Luther", 40)
    expect(@activity.total_cost).to eq(60)
    expect(@activity.split).to eq(30)
    expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
  end
end