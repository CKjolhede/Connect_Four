require 'pry'
require './lib/board'
require './lib/winning_arrays'
require './lib/turn'

class Game

  def game_start
    winning_arrays = WinningArrays.new.array
    board = Board.new
    board.print_board

    puts "You'll be playing as 'X'. Choose a column to drop your pieces in by typing 'A' 'B' 'C' 'D' 'E' 'F' or 'G'"

    turn = Turn.new(board, winning_arrays)

    until turn.game_over
      turn.full_column.each do |key, value|
        if value > 5
          turn.valid_input.delete(key)
        end
      end

      turn.player

      board.print_board
      puts 'Computer move:'

      turn.computer

      board.print_board
    end #until end

    # board.print_board

    if winning_arrays.find { |win| win.uniq == ["X"] }
      puts "*~~~* Congratulations, You Win!! *~~~*"
    elsif winning_arrays.find { |loss| loss.uniq == ["O"] }
      puts "*~~~* Too bad, the computer won. *~~~*"
    else
      puts "*~~* DRAW *~~*"
    end

    puts ''
    welcome_start = MainMenu.new.welcome_prompt
  end #game_start method end
end  #JbGame class end
