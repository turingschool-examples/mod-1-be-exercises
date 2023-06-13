require './lib/reunion'
require './lib/activity'

RSpec.describe Reunion do
  describe "#initialize" do
    it "exists" do
      reunion = Reunion.new("1406 BE")

      expect(reunion).to be_a(Reunion)
    end

    it "has attributes" do
      reunion = Reunion.new("1406 BE")

      expect(reunion.name).to eq("1406 BE")
      expect(reunion.activities).to eq([])
    end
  end

  describe "#add_activity" do
    it "can add an activity to the reunion" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)

      expect(reunion.activities).to eq([activity_1])
    end
  end

  describe "#total_cost_reunion" do
    it "can return the total cost of the event" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      activity_2 = Activity.new("Basketball")
      activity_3 = Activity.new("Bounchy Castle")

      reunion.add_activity(activity_1)
      reunion.add_activity(activity_2)
      reunion.add_activity(activity_3)

      activity_1.add_participant("Sam", 20)
      activity_1.add_participant("Frodo", 10)

      activity_2.add_participant("Sam", 40)
      activity_2.add_participant("Frodo", 30)

      activity_3.add_participant("Bilbo", 20)

      expect(reunion.total_cost_reunion).to eq(120)
    end
  end

  describe "#total_owed" do
    it "can return all owed for each participant from reunion" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      activity_2 = Activity.new("Basketball")
      activity_3 = Activity.new("Bounchy Castle")

      reunion.add_activity(activity_1)
      reunion.add_activity(activity_2)
      reunion.add_activity(activity_3)

      activity_1.add_participant("Sam", 40) # -10 
      activity_1.add_participant("Frodo", 20) # 10
      # split = 30

      activity_2.add_participant("Sam", 10) # 20
      activity_2.add_participant("Frodo", 50) # 20
      # split = 30

      activity_3.add_participant("Bilbo", 20)
      activity_3.add_participant("Frodo", 20)
      # split = 20

      expected = {
        "Sam" => 10,
        "Frodo" => -10, 
        "Bilbo" => 0
      }

      expect(reunion.total_owed).to eq(expected)
    end
  end

  describe "#summary" do
    it "can return a string of each participant & total owed, separated by line break" do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      activity_2 = Activity.new("Basketball")
      activity_3 = Activity.new("Bounchy Castle")

      reunion.add_activity(activity_1)
      reunion.add_activity(activity_2)
      reunion.add_activity(activity_3)

      activity_1.add_participant("Sam", 40) 
      activity_1.add_participant("Frodo", 20) 

      activity_2.add_participant("Sam", 10) 
      activity_2.add_participant("Frodo", 50) 

      activity_3.add_participant("Bilbo", 20)
      activity_3.add_participant("Frodo", 20)

      expected = "Sam: 10\nFrodo: -10\nBilbo: 0"

      expect(reunion.summary).to eq(expected)
    end
  end
end