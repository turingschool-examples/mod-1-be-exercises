class Activity 
  attr_reader :name, 
              :participants

  def initialize(name)
    @name = name 
    @participants = Hash.new
  end

  def add_participant(name, cost)
    @participants.merge!({name => cost})
  end

  def total_cost 
    @participants.values.sum
  end

  def split 
    total_cost / @participants.count
  end

  def owed 
    total_cost_per_person = split
    owed_hash = {}

    @participants.each do |participant, cost|
      owed_hash[participant] = total_cost_per_person - cost
    end

    owed_hash
  end
end