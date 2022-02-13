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
    @board.update_board("b")
    @board.update_board("c")
    @board.update_board("d")
    @board.update_board("e")
    @board.update_board("f")
    @board.update_board("g")
    # require "pry"; binding.pry
    expect(@board.game_board[5][0]).to eq("X ")
  end
end
