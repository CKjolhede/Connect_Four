require 'pry'

class Board
  attr_reader :game_board

  def initialize
    @game_board = Array.new(6) {Array.new(7,'. ')}
    available_slots = Array.new(7,0)
  end

  def render_board
    print "#{"A B C D E F G"}\n"
    @game_board.each do |row|
      puts "#{row.join.to_s.gsub('"','')}\n"
    end
  end
end
