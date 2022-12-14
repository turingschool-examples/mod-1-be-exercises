class Pet
  attr_reader :name,
              :type

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @fed = false
  end

  def feed
    @fed = true
  end

  def fed?
    @fed
  end
end
