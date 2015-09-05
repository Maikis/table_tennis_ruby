require "gosu"
require_relative "player_racket"

class GameWindow < Gosu::Window
  def initialize
    super 400, 500

    @racket = PlayerRacket.new
  end

  def update
    @racket.set_x(mouse_x)
  end

  def draw
    @racket.draw
  end
end

win = GameWindow.new
win.show