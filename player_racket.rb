require "gosu"

class PlayerRacket
  def initialize
    @x = 0
    @y = 480

    @width = 100
    @height = 10
  end

  def set_x(x)
    if x < 50
      @x = 0
    else
      @x = x
    end
  end

  def update

  end

  def draw
    Gosu::draw_rect(@x, @y, @width, @height, Gosu::Color.argb(0xff_0000ff), z = 0, mode = :default)
  end
end