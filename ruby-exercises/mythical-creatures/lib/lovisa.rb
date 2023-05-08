class Lovisa
  attr_reader :title, :characteristics

  def initialize(title, characteristics = ['brilliant'])
    @title = title
    @characteristics = characteristics
    @brilliant = true
    @kind = true
  end

  def brilliant?
    @brilliant
  end

  def kind?
    @kind
  end

  def say(speech)
    "**;* #{speech} **;*"
  end  
end