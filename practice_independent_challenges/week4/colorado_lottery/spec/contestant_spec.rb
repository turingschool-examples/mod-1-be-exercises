require './lib/contestant'
require './lib/game.rb'

RSpec.describe Contestant do 
  before :each do 
    @pick_4 = Game.new('Pick 4', 2)
    @mega_millions = Game.new('Mega Millions', 5, true)
    @alexander = Contestant.new({first_name: 'Alexander',
                                last_name: 'Aigiades',
                                age: 28,
                                state_of_residence: 'CO',
                                spending_money: 10})
  end

  it 'exists with attributes' do 
    expect(@alexander).to be_a(Contestant)
    expect(@alexander.full_name).to eq("Alexander Aigiades")
    expect(@alexander.age).to eq(28)
    expect(@alexander.state_of_residence).to eq("CO")
  end

  it 'states whether contestant is out of state' do 
    expect(@alexander.out_of_state?).to eq(false)
  end

  it 'starts with no game interests' do 
    expect(@alexander.game_interests).to eq([])

    @alexander.add_game_interest(@mega_millions)
    @alexander.add_game_interest(@pick_4)

    expect(@alexander.game_interests).to eq([@mega_millions, @pick_4])
  end
end