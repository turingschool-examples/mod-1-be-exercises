class Painter

  attr_reader :name, :paints

  def initialize(name)
    @name = name
    @paints = []
  end

  def greeting
    "Hello, I'm #{name}"
  end

  def get_paints
    @paints
  end

  def add_all_paints(paint)
    @paints << paint
  end

  def add_paint(paint)
    @paints << paint
  end

  def paint_names
    @paints.map do |paint|
      paint.color
    end
  end
end
