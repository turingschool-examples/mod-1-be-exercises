require './spec/spec_helper'
require './lib/hobbit'

RSpec.describe Hobbit do
  it 'has a name' do
    hobbit = Hobbit.new('Bilbo')
    expect(hobbit.name).to eq('Bilbo')
  end

  it 'can have another name' do
    hobbit = Hobbit.new('Peregrin')
    expect(hobbit.name).to eq('Peregrin')
  end

  it 'has an unadventurous disposition' do
    hobbit = Hobbit.new('Samwise')
    expect(hobbit.disposition).to eq('homebody')
  end

  it 'can have a different disposition' do
    hobbit = Hobbit.new('Frodo', 'adventurous')
    expect(hobbit.disposition).to eq('adventurous')
  end

  it 'can grow older when celebrating birthdays' do
    hobbit = Hobbit.new('Meriadoc')
    expect(hobbit.age).to eq(0)

    5.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.age).to eq(5)
  end

  it 'is considered a child at 32' do
    hobbit = Hobbit.new('Gerontius')

    32.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be false
  end

  it 'comes of age at 33' do
    hobbit = Hobbit.new('Otho')

    33.times do
      hobbit.celebrate_birthday
    end

    expect(hobbit.adult?).to be true

    # still an adult one year later
    hobbit.celebrate_birthday

    expect(hobbit.adult?).to be true
  end

  it 'is old at the age of 101' do
    hobbit = Hobbit.new('James')
    100.times do
      hobbit.celebrate_birthday
    end
    expect(hobbit.old?).to be false
    
    101.times do
      hobbit.celebrate_birthday
    end
    expect(hobbit.old?).to be true
  end

  it 'it has the ring if its name is Frodo' do
    hobbit1 = Hobbit.new('Frodo')
    hobbit2 = Hobbit.new('Timothy')
    expect(hobbit1.has_ring?).to be true
    expect(hobbit2.has_ring?).to be false
    # check that .has_ring? for Sam returns false
  end

  it 'they are short' do
    hobbit = Hobbit.new('Frodo')
    expect(hobbit.is_short?).to be true
  end
end
