require './lib/cell'
require './lib/board'
require 'rspec'
require 'pry'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
    @cell_a1 = Cell.new({
      slot_value: '.',
      column: "a",
      row: 1,
      index: "a1", row_column_test_value: 1, diagonal_test_value: 0.001})
  end

  it 'exists' do
    expect(@board).to be_a(Board)
  end

  it 'can verify open slot #valid_slot' do
    expect(@board.valid_slot?(@cell_a1)).to eq(true)
    end

  xit 'can #create_column_arrays' do
    expect(@board.create_column_arrays).to eq(columns)
    end
end
