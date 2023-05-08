class Unicorn
  attr_reader :name, :color

  def initialize(name, color = "silver")
    @name = name
    @color = color  
  end

  def silver?
    return true if color == "silver"
    false
    # if @color == "silver" 
    #     true
    # else
    #     false
    # end
  end

  def say(statement)
    "**;* #{statement} **;*"
  end
end

