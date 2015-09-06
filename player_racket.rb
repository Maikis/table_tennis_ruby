class PlayerRacket
  attr_reader :x, :y, :width

  def initialize
    @x = 0
    @y = 480

    @width = 50
    @height = 10
  end

  def set_x(x)
    if x <= 150
      @x = 150
    elsif x >= 550 - @width
      @x = 550 - @width
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