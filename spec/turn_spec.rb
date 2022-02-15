require './lib/board'
require './lib/turn'
require './lib/winning_arrays'
require 'rspec'

RSpec.describe Turn do

  it 'exists' do
    board = Board.new
    winning_arrays = WinningArrays.new
    turn = Turn.new(board, winning_arrays)
    expect(turn).to be_a(Turn)
  end

end
