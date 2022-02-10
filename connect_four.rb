require './lib/cell'
require './lib/board'
require './lib/game'

system('clear')
game.start
game = Game.new

def game.begin
  game.environment
end
