require 'rspec'
require './lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  it 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true
  end

  it 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.wolf?).to be true
    expect(werewolf.human?).to be false
    # require "pry"; binding.pry
  end

  it 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true

    werewolf.change!

    expect(werewolf.human?).to be false

    werewolf.change!

    expect(werewolf.human?).to be true
  end

  it 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    
    werewolf.change!
    expect(werewolf.wolf?).to be true
    
    werewolf.change!
    werewolf.change!
    
    expect(werewolf.wolf?).to be true
    # require "pry"; binding.pry
  end
  
  it 'is not hungry by default' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.hungry?).to be false 
  end
  
  it 'becomes hungry after changing to a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    # your code here
    werewolf.change!
    expect(werewolf.hungry?).to be true
    # require "pry"; binding.pry
  end
  
  class Victim
    attr_accessor :status
    
    def initialize(name)
      @name = name 
      @status = :alive
    end
  end
  
  it 'consumes a victim' do
    werewolf = Werewolf.new('David', 'London')
    victim1 = Victim.new('Jeff')

    expect(victim1.status).to eq(:alive)
    # require "pry"; binding.pry

    werewolf.change!
    werewolf.eat(victim1)

    # expect(victim1.status).to eq(:dead)
    # expect(werewolf.hungry?).to be false
    expect(werewolf.victims_consumed.first).to be_an_instance_of(Victim)
    # require "pry"; binding.pry
  end

  it 'cannot consume a victim if it is in human form' do
    werewolf = Werewolf.new('David', 'London')
    victim1 = Victim.new('Jeff')

    expect(victim1.status).to eq(:alive)

    werewolf.eat(victim1)

    expect(victim1.status).to eq(:alive)
    expect(werewolf.hungry?).to be false
    expect(werewolf.victims_consumed).to be_empty
  end

  it 'a werewolf that has consumed a human being is no longer hungry' do
    werewolf = Werewolf.new('David', 'London')
    victim1 = Victim.new('Jeff')
    
    werewolf.change!
    werewolf.eat(victim1)
    
    expect(werewolf.hungry?).to be false
  end
  
  it 'a werewolf who has consumed a victim makes the victim dead' do
    werewolf = Werewolf.new('David', 'London')
    victim1 = Victim.new('Jeff')
    werewolf.change!
    werewolf.eat(victim1)

    expect(victim1.status).to eq(:dead)
  end

end
