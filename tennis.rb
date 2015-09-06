require "gosu"
require_relative "player_racket"
require_relative "table"
require_relative "ball"

class GameWindow < Gosu::Window
  def initialize
    super 700, 500

    @table = Table.new
    @ball = Ball.new
    @pl_racket = PlayerRacket.new
  end

  def hit_player
    ball_x = @ball.x
    ball_y = @ball.y
    pl_x = @pl_racket.x
    pl_y = @pl_racket.y
    pl_width = @pl_racket.width

    if ball_y + 10 >= pl_y
      if ball_x <= pl_x + pl_width && ball_x >= pl_x
        @ball.speed_y = -@ball.speed_y
      end
    end
  end

  def update
    @pl_racket.set_x(mouse_x)
    hit_player
    @ball.update
  end

  def draw
    @table.draw
    @pl_racket.draw
    @ball.draw
  end
end

win = GameWindow.new
win.show