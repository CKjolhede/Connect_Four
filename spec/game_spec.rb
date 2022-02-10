require './lib/cell'
require './lib/board'
require './lib/game'
require 'pry'

RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end

  it "exists and sets player to default" do
    expect(@game).to be_a(Game)
    # require "pry"; binding.pry
    # expect(@game.player).to eq("Guest")
  end
end
