class Wizard
  attr_reader :name, :bearded, :rested, :spells_casted
  def initialize(name, bearded: true, rested: true)
    @name = name
    @bearded = bearded 
    @rested = rested
    @spells_casted = 0
  end
  def bearded?
    @bearded
  end
  def incantation(spell)
    "sudo #{spell}"
  end
  def rested? 
    @spells_casted >= 3 ? false : true
  end
  def cast
    @spells_casted += 1
    "MAGIC MISSLE"
  end
end