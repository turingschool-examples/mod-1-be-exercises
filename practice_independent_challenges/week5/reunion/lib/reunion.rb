class Reunion 
  attr_reader :name, 
              :activities 

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end
end