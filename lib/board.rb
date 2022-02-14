require 'pry'
class Board
  attr_reader :hash

  def initialize(hash = {col_A: 'A', col_B: 'B', col_C: 'C', col_D: 'D', col_E: 'E', col_F: 'F', col_G: 'G', a6: '.', b6: '.', c6: '.', d6: '.', e6: '.', f6: '.', g6: '.', a5: '.', b5: '.', c5: '.', d5: '.', e5: '.', f5: '.', g5: '.', a4: '.', b4: '.', c4: '.', d4: '.', e4: '.', f4: '.', g4: '.', a3: '.', b3: '.', c3: '.', d3: '.', e3: '.', f3: '.', g3: '.', a2: '.', b2: '.', c2: '.', d2: '.', e2: '.', f2: '.', g2: '.', a1: '.', b1: '.', c1: '.', d1: '.', e1: '.', f1: '.', g1: '.'})
    @hash = hash
    # @valid_input = valid_input
  end

  def print_board
    puts ''
    puts "#{@hash[:col_A]} #{@hash[:col_B]} #{@hash[:col_C]} #{@hash[:col_D]} #{@hash[:col_E]} #{@hash[:col_F]} #{@hash[:col_G]}"
    puts "#{@hash[:a6]} #{@hash[:b6]} #{@hash[:c6]} #{@hash[:d6]} #{@hash[:e6]} #{@hash[:f6]} #{@hash[:g6]}"
    puts "#{@hash[:a5]} #{@hash[:b5]} #{@hash[:c5]} #{@hash[:d5]} #{@hash[:e5]} #{@hash[:f5]} #{@hash[:g5]}"
    puts "#{@hash[:a4]} #{@hash[:b4]} #{@hash[:c4]} #{@hash[:d4]} #{@hash[:e4]} #{@hash[:f4]} #{@hash[:g4]}"
    puts "#{@hash[:a3]} #{@hash[:b3]} #{@hash[:c3]} #{@hash[:d3]} #{@hash[:e3]} #{@hash[:f3]} #{@hash[:g3]}"
    puts "#{@hash[:a2]} #{@hash[:b2]} #{@hash[:c2]} #{@hash[:d2]} #{@hash[:e2]} #{@hash[:f2]} #{@hash[:g2]}"
    puts "#{@hash[:a1]} #{@hash[:b1]} #{@hash[:c1]} #{@hash[:d1]} #{@hash[:e1]} #{@hash[:f1]} #{@hash[:g1]}"
    puts ''
  end

end #Board Class end
