require 'rspec'
require 'spec_helper'
require_relative "../lib/creature"

RSpec.describe Creature do

        describe 'initialize' do
            it 'it exists' do 
                creature = Creature.new('jeff')
                expect(creature).to be_a Creature
            end 

            it 'name is jeff' do
                creature = Creature.new('jeff')
                expect(creature.name).to eq('jeff') 
            end 

            
        end 

        

    
end



