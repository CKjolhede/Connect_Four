require 'pry'
require './lib/jb_board'

class JbGame

  def welcome_prompt
    puts 'Welcome to Connect 4 This game will be played with 52 cards.'
    puts 'The players today are Megan and Aurora.'
    puts 'Type "GO" to start the game!'
    puts '------------------------------------------------------------------'

    lets_go = gets.chomp.downcase
    until lets_go == 'go' do
      puts 'Nice try, but "GO" is spelled "GO".'
      lets_go = gets.chomp.downcase
    end
    go = JbGame.new.game_start
  end #welcome_prompt end

  def winning_arrays
    [['a1', 'a2', 'a3', 'a4'],['a2', 'a3', 'a4', 'a5'],['a3', 'a4', 'a5', 'a6'],['b1', 'b2', 'b3', 'b4'],['b2', 'b3', 'b4', 'b5'],['b3', 'b4', 'b5', 'b6'],['c1', 'c2', 'c3', 'c4'],['c2', 'c3', 'c4', 'c5'],['c3', 'c4', 'c5', 'c6'],['d1', 'd2', 'd3', 'd4'],['d2', 'd3', 'd4', 'd5'],['d3', 'd4', 'd5', 'd6'],['e1', 'e2', 'e3', 'e4'],['e2', 'e3', 'e4', 'e5'],['e3', 'e4', 'e5', 'e6'],['f1', 'f2', 'f3', 'f4'],['f2', 'f3', 'f4', 'f5'],['f3', 'f4', 'f5', 'f6'],['g1', 'g2', 'g3', 'g4'],['g2', 'g3', 'g4', 'g5'],['g3', 'g4', 'g5', 'g6'],['a1', 'b1', 'c1', 'd1'],['b1', 'c1', 'd1', 'e1'],['c1', 'd1', 'e1', 'f1'],['d1', 'e1', 'f1', 'g1'],['a2', 'b2', 'c2', 'd2'],['b2', 'c2', 'd2', 'e2'],['c2', 'd2', 'e2', 'f2'],['d2', 'e2', 'f2', 'g2'],['a3', 'b3', 'c3', 'd3'],['b3', 'c3', 'd3', 'e3'],['c3', 'd3', 'e3', 'f3'],['d3', 'e3', 'f3', 'g3'],['a4', 'b4', 'c4', 'd4'],['b4', 'c4', 'd4', 'e4'],['c4', 'd4', 'e4', 'f4'],['d4', 'e4', 'f4', 'g4'],['a5', 'b5', 'c5', 'd5'],['b5', 'c5', 'd5', 'e5'],['c5', 'd5', 'e5', 'f5'],['d5', 'e5', 'f5', 'g5'],['a6', 'b6', 'c6', 'd6'],['b6', 'c6', 'd6', 'e6'],['c6', 'd6', 'e6', 'f6'],['d6', 'e6', 'f6', 'g6'],['d1', 'e2', 'f3', 'g4'],['c1', 'd2', 'e3', 'f4'],['d2', 'e3', 'f4', 'g5'],['b1', 'c2', 'd3', 'e4'],['c2', 'd3', 'e4', 'f5'],['d3', 'e4', 'f5', 'g6'],['a1', 'b2', 'c3', 'd4'],['b2', 'c3', 'd4', 'e5'],['c3', 'd4', 'e5', 'f6'],['a2', 'b3', 'c4', 'd5'],['b3', 'c4', 'd5', 'e6'],['a3', 'b4', 'c5', 'd6'],['d1', 'c2', 'b3', 'a4'],['e1', 'd2', 'c3', 'b4'],['d2', 'c3', 'b4', 'a5'],['f1', 'e2', 'd3', 'c4'],['e2', 'd3', 'c4', 'b5'],['d3', 'c4', 'b5', 'a6'],['g1', 'f2', 'e3', 'd4'],['f2', 'e3', 'd4', 'c5'],['e3', 'd4', 'c5', 'b6'],['g2', 'f3', 'e4', 'd5'],['f3', 'e4', 'd5', 'c6'],['g3', 'f4', 'e5', 'd6']]
  end #winning_arrays method end

  def game_start
    board = JbBoard.new.empty_board
    # binding.pry
    board.each do |row|
      row.each do |key, value|
        print value + ' '
      end
      puts
    end
    # board.each do |row|
    #   row.each do |slot|
    #     print slot + ' '
    #   end
    #   puts
    # end

  end
end  #JbGame class end
