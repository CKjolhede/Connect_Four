require './lib/cell'
require './lib/board'
require 'pry'

class Game
  attr_reader :player

  def initalize
    end

  def start
    p "Do you feel you have what it takes to take me on in the ultimate battle of strategy? "
    `say Do you feel you have what it takes to take me on in the ultimate battle of strategy?`
    user_input
  end

  def user_input
    p "Enter yes or no"
    input = gets.chomp
    if input.downcase = "y" || "yes"
      game.begin
    else
    end
  end

  def game_environment
    board.create_cells
    board.create_board_arrays
    # board.render_board
  end

end
