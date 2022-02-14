require './lib/ck_game'


class Board
  attr_reader :game_board, :available_slots

  def initialize
    @game_board = Array.new(6) {Array.new(7,'. ')}
    @available_slots = Array.new(7,5)
    @player = "human"
  end

  def render_board
    print "#{"A B C D E F G"}\n"
    @game_board.each do |row|
      puts "#{row.join.gsub('"','')}\n"
    end
  end

  def update_board(selected_column)
    column = (selected_column.ord)-97
    row = @available_slots[column]
    if @available_slots == [0, 0, 0, 0, 0, 0, 0]
      game.winner = "D"
      game.end_game
    elsif row <= 0
      puts "That column is full. Please choose a column with available spaces"
      game.play
    else
      if @turn.odd?
        @game_board[row][column] = "X "
        coord_string = row.to_s + column.to_s
        game.winning_arrays.gsub!(coord_string, "X")
      else @game_board[row][column] = "O "
        coord_string = row.to_s + column.to_s
        game.winning_arrays.gsub!(coord_string, "O")
      end
    end
    @available_slots[column] -= 1
    system 'clear'
    self.render_board
    @turn += 1
  end


end
