class CompRacket
  attr_reader :x, :y

  def initialize
    @x = 325
    @y = 10

    @width = 50
    @height = 10
  end

  def ball_coord(x)
    @ball_x = x
  end

  def update
    if @x != @ball_x - 25
      @x = @ball_x - 25
    end
  end

  def draw
    Gosu::draw_rect(@x, @y, @width, @height, Gosu::Color.argb(0xff_ff0000),
                     z = 0, mode = :default)
  end
end