require 'pry'
require './lib/board'
require './lib/winning_arrays'

class Game

  def game_start
    winning_arrays = WinningArrays.new.array
    board = Board.new.empty_board
    
    puts ''
    puts "#{board[:col_A]} #{board[:col_B]} #{board[:col_C]} #{board[:col_D]} #{board[:col_E]} #{board[:col_F]} #{board[:col_G]}"
    puts "#{board[:a6]} #{board[:b6]} #{board[:c6]} #{board[:d6]} #{board[:e6]} #{board[:f6]} #{board[:g6]}"
    puts "#{board[:a5]} #{board[:b5]} #{board[:c5]} #{board[:d5]} #{board[:e5]} #{board[:f5]} #{board[:g5]}"
    puts "#{board[:a4]} #{board[:b4]} #{board[:c4]} #{board[:d4]} #{board[:e4]} #{board[:f4]} #{board[:g4]}"
    puts "#{board[:a3]} #{board[:b3]} #{board[:c3]} #{board[:d3]} #{board[:e3]} #{board[:f3]} #{board[:g3]}"
    puts "#{board[:a2]} #{board[:b2]} #{board[:c2]} #{board[:d2]} #{board[:e2]} #{board[:f2]} #{board[:g2]}"
    puts "#{board[:a1]} #{board[:b1]} #{board[:c1]} #{board[:d1]} #{board[:e1]} #{board[:f1]} #{board[:g1]}"
    puts ''

    puts "You'll be playing as 'X'. Choose a column to drop your pieces in by typing 'A' 'B' 'C' 'D' 'E' 'F' or 'G'"


    until winning_arrays.find { |win| win.uniq == ["X"] } || winning_arrays.find { |loss| loss.uniq == ["O"] }
      player_piece = gets.chomp.downcase
      until player_piece == 'a' || player_piece == 'b' || player_piece == 'c' || player_piece == 'd' || player_piece == 'e' || player_piece == 'f' || player_piece == 'g' #player_piece.include? 'abcdefg' == true
        puts "please choose a valid column between 'A' and 'G'"
        player_piece = gets.chomp.downcase
      end

      player_column = []

      board.each do |key, value|
        if key.to_s.include? player_piece
          if value == '.'
            player_column << key
          end
        end
      end

      board[player_column.reverse.first] = 'X'
      winning_arrays.each do |winning_combo|
        winning_combo.select{ |s| s.include? player_column.reverse.first[0..1].to_s }.each{ |s| s.replace( "X" ) }
      end
      # binding.pry

      puts ''
      puts "#{board[:col_A]} #{board[:col_B]} #{board[:col_C]} #{board[:col_D]} #{board[:col_E]} #{board[:col_F]} #{board[:col_G]}"
      puts "#{board[:a6]} #{board[:b6]} #{board[:c6]} #{board[:d6]} #{board[:e6]} #{board[:f6]} #{board[:g6]}"
      puts "#{board[:a5]} #{board[:b5]} #{board[:c5]} #{board[:d5]} #{board[:e5]} #{board[:f5]} #{board[:g5]}"
      puts "#{board[:a4]} #{board[:b4]} #{board[:c4]} #{board[:d4]} #{board[:e4]} #{board[:f4]} #{board[:g4]}"
      puts "#{board[:a3]} #{board[:b3]} #{board[:c3]} #{board[:d3]} #{board[:e3]} #{board[:f3]} #{board[:g3]}"
      puts "#{board[:a2]} #{board[:b2]} #{board[:c2]} #{board[:d2]} #{board[:e2]} #{board[:f2]} #{board[:g2]}"
      puts "#{board[:a1]} #{board[:b1]} #{board[:c1]} #{board[:d1]} #{board[:e1]} #{board[:f1]} #{board[:g1]}"
      puts ''
      puts "Computer's turn:"
      puts ''

      cols = %w(a b c d e f g)
      computer_piece = cols.shuffle.first

      computer_column = []

      board.each do |key, value|
        if key.to_s.include? computer_piece
          if value == '.'
            computer_column << key
          end
        end
      end
      board[computer_column.reverse.first] = 'O'
      winning_arrays.each do |winning_combo|
        winning_combo.select{ |s| s.include? computer_column.reverse.first[0..1].to_s }.each{ |s| s.replace( "O" ) }
      end

      puts "#{board[:col_A]} #{board[:col_B]} #{board[:col_C]} #{board[:col_D]} #{board[:col_E]} #{board[:col_F]} #{board[:col_G]}"
      puts "#{board[:a6]} #{board[:b6]} #{board[:c6]} #{board[:d6]} #{board[:e6]} #{board[:f6]} #{board[:g6]}"
      puts "#{board[:a5]} #{board[:b5]} #{board[:c5]} #{board[:d5]} #{board[:e5]} #{board[:f5]} #{board[:g5]}"
      puts "#{board[:a4]} #{board[:b4]} #{board[:c4]} #{board[:d4]} #{board[:e4]} #{board[:f4]} #{board[:g4]}"
      puts "#{board[:a3]} #{board[:b3]} #{board[:c3]} #{board[:d3]} #{board[:e3]} #{board[:f3]} #{board[:g3]}"
      puts "#{board[:a2]} #{board[:b2]} #{board[:c2]} #{board[:d2]} #{board[:e2]} #{board[:f2]} #{board[:g2]}"
      puts "#{board[:a1]} #{board[:b1]} #{board[:c1]} #{board[:d1]} #{board[:e1]} #{board[:f1]} #{board[:g1]}"
      puts ''
      # binding.pry
    end #until end

    if winning_arrays.find { |win| win.uniq == ["X"] }
      puts "*~~~* Congratulations, You Win!! *~~~*"
    elsif winning_arrays.find { |loss| loss.uniq == ["O"] }
      puts "*~~~* Too bad, the computer won. *~~~*"
    end

    puts ''
    welcome_start = MainMenu.new.welcome_prompt
  end #game_start method end
end  #JbGame class end
