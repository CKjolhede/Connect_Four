require './lib/ck_board'

class Game

  attr_reader :selected_column, :board, :winner

  def initialize (winner = nil)
    @winner = winner
    # @player = player
    @board = Board.new
    @games = 0

  end

  def welcome_prompt
    system 'clear'
    p 'Welcome to Connect Four'
    p 'Would you like to play a game?'
    p "Enter 'yes' or 'no'"
    `say Would you like to play a game?`
    lets_go = gets.chomp.downcase
    until lets_go == 'yes' || 'y' do
      puts 'Please answer yes...   or no'
      system 'say hmmm, I dont understand that.'
      lets_go = gets.chomp.downcase
    end
    # p 'What name would you like to use on the battlefield?'
    # system 'say What would you like me to call you?'
    # name = gets.chomp.capitalize
    # p 'I am sorry but that name is already in use. I will just call you Penelope'
    # system 'say I am sorry but that name is already in use. I will just call you Penelope'
    # sleep(1)
    system 'clear'
    board.render_board
    play
  end

  def play
    puts "You are playing as X."
    until self.win? == true || self.loss? == true || self.draw? == true
      if board.turn.odd?
        puts "Select a column by its letter to place your piece"
        column_choice = gets.chomp.downcase.ord - 97
          until column_choice < 8
            puts "That column is not on the board. Please select again.
            play"
            column_choice = gets.chomp.downcase.ord - 97
          end
          until board.available_slots[column_choice] > 0
            puts "That column is already full. Please select another"
            column_choice = gets.chomp.downcase.ord - 97
          end
          # require "pry"; binding.pry
        @board.update_board(column_choice)
      else
        column_choice = rand(7)
        until board.available_slots[column_choice] > 0
          column_choice = rand(7)
        end
        @board.update_board(column_choice)
      end
    end
  end


  def win?
    if board.winning_arrays.find { |win| win.uniq == ["X"] }
      end_game("P")
    end
  end

  def loss?
    if board.winning_arrays.find { |loss|  loss.uniq == ["O"] }
    end_game("C")
    end
  end

  def draw?
    if board.available_slots == [0, 0, 0, 0, 0, 0, 0]
      game.winner = "D"
      game.end_game("D")
    end
  end



  def end_game(condition)
    case condition
    when "D"
      p "The Game is a Draw"
      system `say You are my equal it seems.`
    when "C"
      p "I won!!!"
      system `say Uh huh Uh huh Uh huh I totally crushed you.`
    when "P"
      p "You won"
      system `say Whatever. You got lucky that time`
    end
    sleep(1.5)
      p "Would you like to play again?"
      system `say Would you like to play again?`
      input = gets.chomp
      if input == 'y' || 'yes'
        system `clear`
        game.Game.new
        game.welcome_prompt
      else
        p 'Good-Bye'
        system 'say I dont either. Goodbye'
        exit
      end
end



end
