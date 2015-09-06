class PlayerRacket
  attr_reader :x, :y, :width

  def initialize
    @x = 0
    @y = 480

    @width = 100
    @height = 10
  end

  def set_x(x)
    if x <= 150
      @x = 150
    elsif x >= 450
      @x = 450
    else
      @x = x
    end
  end

  def update

  end

  def draw
    Gosu::draw_rect(@x, @y, @width, @height, Gosu::Color.argb(0xff_0000ff),
                     z = 0, mode = :default)
  end
end