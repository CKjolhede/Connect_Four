require 'pry'

class Cell
  attr_reader :slot_value, :column, :row, :index,  :row_column_test_value, :diagonal_test_value

  def initialize(slot_value, column, row, index, row_column_test_value, diagonal_test_value)
    @slot_value = slot_value
    @column = column
    @row = row
    @index = index
    @row_column_test_value = row_column_test_value
    @diagonal_test_value = diagonal_test_value
  end

  def cell_info
    cell_info = {
      slot_value: @slot_value,
      column: @column,
      row: @row,
      index: @index,
      row_column_test_value: @row_column_test_value,
      diagonal_test_value: @diagonal_test_value
    }
  end
  # binding.pry
end
