class Ball
  attr_reader :x, :y, :speed_y
  attr_writer :speed_y
  def initialize
    @image = Gosu::Image.new("media/ball.png")
    
    @x = 350
    @y = 50
    @speed_x = 2
    @speed_y = -3
  end

  def update_speed_y(speed_y)
    @speed_y = speed_y
  end

  def update
    @x += @speed_x
    @y += @speed_y

    if @x <= 150 || @x >= 540
      @speed_x = -@speed_x
    end
    if @y <= 0
      @speed_y = -@speed_y
    end
  end

  def draw
#    Gosu::draw_rect(@x, @y, 10, 10, Gosu::Color.argb(0xff_ffffff),
#                     z = 0, mode = :default)
    @image.draw_rot(@x, @y, 0, 0, 0.5, 0.5, 0.02, 0.02)
  end
end