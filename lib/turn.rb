require 'pry'
require './lib/winning_arrays'

class Turn
  attr_reader :valid_input, :full_column

  def initialize(board, winning_arrays, valid_input = %w(a b c d e f g), full_column = {'a' => 0, 'b' => 0, 'c' => 0, 'd' => 0, 'e' => 0, 'f' => 0, 'g' => 0})
    @board = board
    @winning_arrays = winning_arrays
    @valid_input = valid_input
    @full_column = full_column
  end

  def player
      player_piece = gets.chomp.downcase
      until @valid_input.include?(player_piece)
        puts "please choose a column between 'A' and 'G' with open slots available"
        player_piece = gets.chomp.downcase
      end

      player_column = []
      # full_column = []
      @board.hash.each do |key, value|
        if key.to_s.include? player_piece
          if value == '.'
            player_column << key
          end
        end
      end

      @full_column[player_piece] += 1
      @board.hash[player_column.last] = 'X'

      if player_column.length > 0
        @winning_arrays.each do |nested_win|
          nested_win.select{ |s| s.include? player_column.last[0..1].to_s }.each{ |s| s.replace( "X" ) }
        end
      end

  end #player_turn method end

  def computer

    computer_piece = @valid_input.shuffle.first
    until @valid_input.include?(computer_piece)
      computer_piece = @valid_input.shuffle.first
    end
    computer_column = []

    @board.hash.each do |key, value|
      if key.to_s.include? computer_piece
        if value == '.'
          computer_column << key
        end
      end
    end

    @full_column[computer_piece] += 1
    @board.hash[computer_column.last] = 'O'
    if computer_column.length > 0
      @winning_arrays.each do |nested_win|
        nested_win.select{ |s| s.include? computer_column.last[0..1].to_s }.each{ |s| s.replace( "O" ) }
      end
    end
  end #computer method end

  def game_over?
    @winning_arrays.find { |win| win.uniq == ["X"] } || @winning_arrays.find { |loss| loss.uniq == ["O"] } || @valid_input.length == 0
  end

end #turn class end
