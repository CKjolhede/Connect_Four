require 'pry'

class Board
  attr_reader :game_board, :available_slots

  def initialize
    @game_board = Array.new(6) {Array.new(7,'. ')}
    @available_slots = Array.new(7,6)
    @player = "human"
  end

  def render_board
    print "#{"A B C D E F G"}\n"
    @game_board.each do |row|
      puts "#{row.join.to_s.gsub('"','')}\n"
    end
  end

  def update_board(selected_column)
    column = (selected_column.ord)-97
    row = @available_slots[column]
    if @available_slots == [0, 0, 0, 0, 0, 0, 0]
      puts "Its a Draw"
    elsif row < 1
      puts "That column is full. Please choose a column with available spaces"
      game.start_turn
    else
      if @player == "human"
        @game_board[row][column].replace('X')
      else @game_board[row][column].replace("O")
      end
    end
    @available_slots[column] += 1
    # echo 'clearß'
    self.render_board
  end

end
