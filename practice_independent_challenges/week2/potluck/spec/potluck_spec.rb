require './lib/dish'
require './lib/potluck'

RSpec.describe PotLuck do
  describe "#exists" do
    it "exists" do
      potluck = PotLuck.new("7-13-18")

      expect(potluck).to be_an_instance_of(PotLuck)
    end
  end
end