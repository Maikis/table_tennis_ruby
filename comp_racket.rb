class CompRacket
  attr_reader :x, :y

  def initialize
    @x = 325
    @y = 10

    @frame = 0

    @width = 50
    @height = 10

    @speed = 2
    @frame = 0
  end

  def ball_coord(x)
    @ball_x = x
  end

  def update
    if @x + @width < @ball_x
      @x += @speed
      if @ball_x - (@x + @width) > 50
        @speed += 1
      end
    elsif @x > @ball_x
      @x -= @speed
      if @x - @ball_x > 50
        @speed += 1
      end
    else
      @speed = 0
    end

  end

  def draw
    Gosu::draw_rect(@x, @y, @width, @height, Gosu::Color.argb(0xff_ff0000),
                     z = 0, mode = :default)
  end
end