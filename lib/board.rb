class Board
  Cell < Board
  attr_reader :slots , :columns

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

  def create_cells
  end

  def create_column_arrays
    column_a = [cell_a1, cell_a2, cell_a3, cell_a4, cell_a5, cell_a6]
    column_b = [cell_b1, cell_b2, cell_b3, cell_b4, cell_b5, cell_b6]
    column_c = [cell_c1, cell_c2, cell_c3, cell_c4, cell_c5, cell_c6]
    column_d = [cell_d1, cell_d2, cell_d3, cell_d4, cell_d5, cell_d6]
    column_e = [cell_e1, cell_e2, cell_e3, cell_e4, cell_e5, cell_e6]
    column_f = [cell_f1, cell_f2, cell_f3, cell_f4, cell_f5, cell_f6]
    column_g = [cell_g1, cell_g2, cell_g3, cell_g4, cell_g5, cell_g6]
    columns = [column_a, column_b, column_c, column_d, column_e, column_f, column_g]
  end

  # def render_board
  #   row = []


end
