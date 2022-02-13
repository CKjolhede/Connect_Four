require './lib/ck_board'
require 'rspec'
require 'pry'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  it 'exists' do
    expect(@board).to be_a(Board)
    expect(@board.game_board).to be_a(Array)
  end

  it 'can #render_board' do
    expect(@board.render_board).to be_a(Array)
  end

  it 'can find correct column from user input' do
    @player = "human"
    @board.update_board("a")
    expect(@board.game_board[0][6]).to eq("X")
  end
end
