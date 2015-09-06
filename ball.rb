class Ball
  attr_accessor :x, :y, :speed_y
  
  def initialize
    @image = Gosu::Image.new("media/ball.png")
    
    @x = 350
    @y = 50
    @speed_x = 2
    @speed_y = 5
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
  end

  def draw
    @image.draw_rot(@x, @y, 0, 0, 0.5, 0.5, 0.02, 0.02)
  end
end