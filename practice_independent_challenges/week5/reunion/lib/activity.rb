class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

  def split 
    total_cost / @participants.count #.size #.length
  end

  # OPTION 1
  def owed
    @participants.transform_values do |money_spent|
      (money_spent - split) * -1 #OR split - money_spent
    end
  end

  # OPTION 2
  # def owed
  #   part_owed = Hash.new

  #   @participants.each do |participant, money|
  #     part_owed[participant] = split - money
  #   end

  #   part_owed
  # end
end