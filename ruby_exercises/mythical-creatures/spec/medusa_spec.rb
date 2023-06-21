require 'rspec'
# require './spec/spec_helper'
require './lib/medusa'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    # require "pry"; binding.pry
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    medusa = Medusa.new("Jupiter")
    victim1 = Person.new("Steve")
    victim2 = Person.new("Eric")
    victim3 = Person.new("Jeff")
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    expect(medusa.statues.length).to eq (3)
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    # your code here
    medusa = Medusa.new("Jupiter")
    victim1 = Person.new("Steve")
    victim2 = Person.new("Eric")
    victim3 = Person.new("Jeff")
    victim4 = Person.new("Aaron")
    # require "pry"; binding.pry
    medusa.stare(victim1)
    # require "pry"; binding.pry
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    # require "pry"; binding.pry
    expect(medusa.statues.length).to eq (3)
    victim5 = Person.new("ted")
    medusa.stare(victim5)
    require "pry"; binding.pry
  end
end
