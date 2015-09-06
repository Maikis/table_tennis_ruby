class Score
  attr_accessor :pl_score, :comp_score

  def initialize
    @pl_score = 0
    @comp_score = 0

    @lvl = 1

    @font = Gosu::Font.new(20)
  end

  def lvl_up
    @lvl += 1
    @pl_score = 0
    @comp_score = 0
  end

  def reset_lvl
    @pl_score = 0
    @comp_score = 0
  end

  def draw
    @font.draw("Level: #{@lvl}", 570, 190, 0, 1.0, 1.0, 0xff_ff0000)
    @font.draw("Player: #{@pl_score}", 570, 350, 0, 1.0, 1.0, 0xff_ffff00)
    @font.draw("Computer: #{@comp_score}", 570, 20, 0, 1.0, 1.0, 0xff_ffff00)
  end
end