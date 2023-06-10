require 'rspec'
require './lib/vampire'

RSpec.describe Vampire do
  it 'has a name' do
    vampire = Vampire.new('Dracula', 'cat')
    expect(vampire.name).to eq('Dracula')
  end

  it 'it can be named something else' do
    vampire = Vampire.new('Vladimir', 'cat')
    expect(vampire.name).to eq('Vladimir')
  end

  it 'keeps a pet bat by default' do
    vampire = Vampire.new('Ruthven', 'bat')
    expect(vampire.pet).to eq('bat')
  end

  it 'can keep other pets' do 
    vampire = Vampire.new('Varney', 'fox')
    expect(vampire.pet).to eq('fox')
  end

  it 'is thirsty by default' do
    vampire = Vampire.new('The Count', 'cow')

    expect(vampire.thirsty).to be true
  end

  it 'is not thirsty after drinking' do 
    vampire = Vampire.new('Elizabeth Bathory', "giraffe")
    vampire.drink
    expect(vampire.thirsty).to be false
  end
end
