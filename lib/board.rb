class Board
  Cell < Board

  attr_reader :slots

  def initialize
    @slots = []

  end

  def valid_slot?(cell)


    if cell.slot == "."

      open_slot = true
    else
      open_slot = false
    end
  end

  def create_column_arrays
    columns = []
    a = [a1, a2, a3, a4, a5, a6, a7]
    b = [b1, b2, b3, b4, b5, b6, b7]
    c = [c1, c2, c3, c4, c5, c6, c7]
    d = [d1, d2, d3, d4, d5, d6, d7]
    e = [e1, e2, e3, e4, e5, e6, e7]
    f = [f1, f2, f3, f4, f5, f6, f7]
    g = [g1, g2, g3, g4, g5, g6, g7]

  def create_cells
  end

  end

  # def render_board
  #   row = []


end

