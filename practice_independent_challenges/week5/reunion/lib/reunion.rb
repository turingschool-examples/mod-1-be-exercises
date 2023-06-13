class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity) #splat: (*activity)
    # @activities.push(*activity)
    @activities << activity
  end

  def total_cost_reunion
    @activities.sum do |activity|
      activity.total_cost
    end
  end

  # PSEUDOCODE for #total_cost_reunion: 
    # return sum of all participant's costs: 
    # iterate through activities
    # with each activity -> sum up participants values
    # activity.participants.values.sum
    # return a total number

  def total_owed
    owed = Hash.new(0)

    @activities.each do |activity|
      activity.owed.each do |participant, amount_owed|
        owed[participant] += amount_owed
      end
    end

    owed
  end

  # PSEUDOCODE for #total_owed:
  # find difference for all partipants over all activities
  # build a new hash to collect participant name & amount owed
  # iterate through all activities
  # call #owed on activity
  # build hash with differences across all activities
end