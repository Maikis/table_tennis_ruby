class Table
  def draw
    Gosu::draw_rect(150, 0, 400, 500, Gosu::Color.argb(0xff_009900), z = 0, mode = :default)
  end
end