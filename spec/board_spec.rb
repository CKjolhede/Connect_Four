require './lib/board'
require 'rspec'

RSpec.describe Board do

  it 'exists' do
    board = Board.new
    expect(board).to be_a(Board)
  end

  it "can return the value of specific cells" do
      board = Board.new
    expect(board.hash[:b6]).to eq('.')
  end

  it "can return the value of header cells" do
    board = Board.new
    expect(board.hash[:col_A]).to eq('A')
  end

end
