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

  it 'creates an empty board' do
    expect(@board.empty_board).to eq([{:col_A=>"A", :col_B=>"B", :col_C=>"C", :col_D=>"D", :col_E=>"E", :col_F=>"F", :col_G=>"G"},
 {:a6=>".", :b6=>".", :c6=>".", :d6=>".", :e6=>".", :f6=>".", :g6=>"."},
 {:a5=>".", :b5=>".", :c5=>".", :d5=>".", :e5=>".", :f5=>".", :g5=>"."},
 {:a4=>".", :b4=>".", :c4=>".", :d4=>".", :e4=>".", :f4=>".", :g4=>"."},
 {:a3=>".", :b3=>".", :c3=>".", :d3=>".", :e3=>".", :f3=>".", :g3=>"."},
 {:a2=>".", :b2=>".", :c2=>".", :d2=>".", :e2=>".", :f2=>".", :g2=>"."},
 {:a1=>".", :b1=>".", :c1=>".", :d1=>".", :e1=>".", :f1=>".", :g1=>"."}])
  end


end
