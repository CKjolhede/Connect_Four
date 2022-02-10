require 'pry'

class Cell
  attr_reader :slot, :column, :row, :index, :row_column_test_value, :diagonal_test_value, :cell_info

  def initialize(cell_info)
    @cell_info = cell_info
    @slot = cell_info[:slot]
    @column = cell_info[:column]
    @row = cell_info[:row]
    @row_column_test_value = cell_info[:row_column_test_value]
    @diagonal_test_value = cell_info[:diagnol_test_value]
  end



  # binding.pry
end
