require './lib/ck_board'
require './lib/ck_game'
require 'pry'

RSpec.describe Game do

  it 'exists and sets player to default' do
    system 'ruby ck_connect_four.rb'
    expect(@game).to be_a(Game)
  end


end
