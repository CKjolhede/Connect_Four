require './lib/cells_helper'
class Cells
attr_reader :slot, :column, :row, :row_column_test_value, :diagonal_test_value

  def initialize (slot = '.', column, row, row_column_test_value, diagonal_test_value)
  @slot = slot
  @column = column
  @row = row
  @row_column_test_value = row_column_test_value
  @diagonal_test_value = diagonal_test_value
  end


end
