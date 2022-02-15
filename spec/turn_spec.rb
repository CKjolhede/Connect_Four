require './lib/board'
require './lib/turn'
require './lib/game'
require './lib/winning_arrays'
require 'rspec'

RSpec.describe Turn do

  it 'exists' do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    expect(turn).to be_a(Turn)
  end

  it 'can return attributes' do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    expect(turn.valid_input).to eq(%w(a b c d e f g))
    expect(turn.full_column).to eq({'a' => 0, 'b' => 0, 'c' => 0, 'd' => 0, 'e' => 0, 'f' => 0, 'g' => 0})
  end
end
  describe "Turn user input hardcoded" do
    #requires replacing gets to be changed to hardcoded 'a' on line 15 of turn.rb

  it 'player turn interact with winning_arrays and board hash' do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    turn.player
    expect(winning_arrays[0][0]).to eq("X")
    expect(board.hash[:a1]).to eq("X")
  end

  it "increments full column on a player turn" do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    turn.player
    expect(turn.full_column["a"]).to eq(1)
  end

  it "increments full column on a computer turn" do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    turn.computer
    expect(turn.full_column["a"]).to eq(1)
  end

  it 'computer turn interact with winning_arrays and board hash' do
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays)
    turn.computer
    expect(winning_arrays[0][0]).to eq("O")
    expect(board.hash[:a1]).to eq("O")
  end

  it 'evaluates #game_over? conditions' do
    # hardcoding WinningArrays.array[0] elements to be all "X"'s
    board = Board.new
    winning_arrays = WinningArrays.new.array
    turn = Turn.new(board, winning_arrays) 
    expect(turn.game_over?).to eq(true)
  end
end
