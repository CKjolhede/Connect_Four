require 'pry'
class Board

  def empty_board
    [{col_A: 'A', col_B: 'B', col_C: 'C', col_D: 'D', col_E: 'E', col_F: 'F', col_G: 'G'}, {a6: '.', b6: '.', c6: '.', d6: '.', e6: '.', f6: '.', g6: '.'}, {a5: '.', b5: '.', c5: '.', d5: '.', e5: '.', f5: '.', g5: '.'}, {a4: '.', b4: '.', c4: '.', d4: '.', e4: '.', f4: '.', g4: '.'}, {a3: '.', b3: '.', c3: '.', d3: '.', e3: '.', f3: '.', g3: '.'}, {a2: '.', b2: '.', c2: '.', d2: '.', e2: '.', f2: '.', g2: '.'}, {a1: '.', b1: '.', c1: '.', d1: '.', e1: '.', f1: '.', g1: '.'}]
  end

  def win?(board)
    # trying to say: if the below .find is successful in returning an array
    # with only 'x', the player has won. elsif
    if board.find { |win| win.uniq == ["x"] }
      true
    elsif
      false
    end
  end

  def loss?(board)
    if winning_array.find { |loss| loss.uniq == ["o"] }
      true
    elsif
      false
    end
  end

  # def empty_board
  #   board = [%w(A B C D E F G)]
  #   letters = %w(a b c d e f g)
  #   rows = %w(6 5 4 3 2 1)
  #     rows.each do |letter|
  #       rows = []
  #       letters.each do |row|
  #         rows << row + letter
  #       end
  #       board << rows
  #     end
  #   board
  # end #empty_board end
  # binding.pry

end #JbBoard end
