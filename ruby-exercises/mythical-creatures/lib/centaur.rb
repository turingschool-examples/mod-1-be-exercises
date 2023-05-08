class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @sleep = 'Zzzzz!'
    @run_count = 0
    @shoot_count = 0
    @sick = false
    @potion_count = 0
  end

  def shoot
    return 'NO!' if @laying == true
    return 'NO!' if @shoot_count >= 3 
    @shoot_count += 1
    'Twang!!!'
  end

  def run
    return 'NO!' if @laying == true
    @run_count += 1
    'Clop clop clop clop!'
  end

  def cranky?
    return @cranky = true if @shoot_count + @run_count >= 3
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def lay_down
    @laying = true 
    @standing = false
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if @standing == true
        'NO!'
    else
        @cranky = false
        @run_count = 0
        @shoot_count = 0
    end
  end

  def drinks_potion
    return 'NO!' if @laying == true
    @cranky = false
    @run_count = 0
    @shoot_count = 0
    @potion_count += 1
  end

  def is_sick?
    return @sick = true if @potion_count >= 2
  end
end


