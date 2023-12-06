class Centaur
  attr_reader :name, :breed, :laying

  def initialize(name, breed)
    @name = name 
    @breed = breed
    @cranky = 0
    @standing = true
  end

  def shoot
    if @cranky >= 3 || laying?
      "NO!"
    else
      @cranky += 1
      "Twang!!!"
    end
  end

  def run 
    if @cranky >= 3 || laying?
      "NO!"
    else
      @cranky += 1
      "Clop clop clop clop!"
    end
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    standing? ? "NO!" : @cranky = 0
  end

  def laying?
    !@standing
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def sleep
    if standing?
      'NO!'
    else
      @cranky = 0
      'Zzzzz...'
    end
  end

end