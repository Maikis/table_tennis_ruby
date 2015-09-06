require "gosu"

require_relative "player_racket"
require_relative "table"
require_relative "ball"
require_relative "comp_racket"
require_relative "score"

class GameWindow < Gosu::Window
  def initialize
    super 700, 500

    @table = Table.new
    @score = Score.new
    @ball = Ball.new
    @pl_racket = PlayerRacket.new
    @comp_racket = CompRacket.new
  end

  def hit_player
    @ball_x = @ball.x
    @ball_y = @ball.y
    pl_x = @pl_racket.x
    pl_y = @pl_racket.y
    pl_width = @pl_racket.width

    if @ball_y + 10 >= pl_y
      if (@ball_x <= pl_x + pl_width) && (@ball_x >= pl_x)
        @ball.speed_y = -@ball.speed_y
      end
    end

    if @ball_y + 10 > pl_y + 40
      reset_ball

      #if player misses ball, score goes to computer
      @score.comp_score += 1;
    end
  end

  def hit_comp
    comp_x = @comp_racket.x
    comp_y = @comp_racket.y

    if @ball_y - 10 <= comp_y
      if (@ball_x <= comp_x + 50) && (@ball_x >= comp_x)
        @ball.speed_y = -@ball.speed_y
      end
    end

    if @ball_y - 10 < comp_y - 40
      reset_ball

      #if computer misses the ball, score goes to player
      @score.pl_score += 1
    end
  end

  def reset_ball
    @ball.x = 350
    @ball.y = 200
    @ball.speed_y = -@ball.speed_y
  end

  def button_down(id)
    if id == Gosu::KbEscape
      close
    end
  end

  def update
    @pl_racket.set_x(mouse_x)
    hit_player

    @comp_racket.ball_coord(@ball_x)
    @comp_racket.update
    hit_comp
    
    @ball.update
  end

  def draw
    @table.draw
    @score.draw
    @pl_racket.draw
    @comp_racket.draw
    @ball.draw
  end
end

win = GameWindow.new
win.show