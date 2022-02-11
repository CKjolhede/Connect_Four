require 'pry'
class JbBoard

  def empty_board
    board = [%w(A B C D E F G)]
    letters = %w(a b c d e f g)
    rows = %w(6 5 4 3 2 1)
      rows.each do |letter|
        rows = []
        letters.each do |row|
          rows << row + letter
        end
        board << rows
      end
    board
  end #empty_board end
  binding.pry

end #JbBoard end
