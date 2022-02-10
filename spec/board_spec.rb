require './lib/cell'
require './lib/board'
require 'rspec'
require 'pry'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  it 'exists' do
    expect(@board).to be_a(Board)
  end

  it 'can verify open slot #valid_slot' do
    expect(@board.valid_slot?(@cell_A1)).to eq(true)

  it 'can #create_column_arrays' do
    expect(@board.create_column_arrays).to eq(columns)
  end
end
