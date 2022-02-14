require './lib/ck_board'

class Game

  attr_reader :selected_column, :board, :turn, :winning_arrays, :winner

  def initialize (winner = nil, turn = 1)
    @winner = winner
    # @player = player
    @board = Board.new
    @turn = turn
    @winning_arrays =
      [['00', '01', '02', '03'],['01', '02', '03', '04'],['02', '03', '04', '05'],['10', '11', '12', '13'],['11', '12', '13', '14'],['12', '13', '14', '15'],['20', '21', '22', '23'],['21', '22', '23', '24'],['22', '23', '24', '25'],['30', '31', '32', '33'],['31', '32', '33', '34'],['32', '33', '34', '35'],['40', '41', '42', '43'],['41', '42', '43', '44'],['42', '43', '44', '45'],['50', '51', '52', '53'],['51', '52', '53', '54'],['52', '53', '54', '55'],['60', '61', '62', '63'],['61', '62', '63', '64'],['62', '63', '64', '65'],['00', '10', '20', '30'],['10', '20', '30', '40'],['20', '30', '40', '50'],['30', '40', '50', '60'],['01', '11', '21', '31'],['11', '21', '31', '41'],['21', '31', '41', '51'],['31', '41', '51', '61'],['02', '12', '22', '32'],['12', '22', '32', '42'],['22', '32', '42', '52'],['32', '42', '52', '62'],['03', '13', '23', '33'],['13', '23', '33', '43'],['23', '33', '43', '53'],['33', '43', '53', '63'],['04', '14', '24', '34'],['14', '24', '34', '44'],['24', '34', '44', '54'],['34', '44', '54', '64'],['05', '15', '25', '35'],['15', '25', '35', '45'],['25', '35', '45', '55'],['35', '45', '55', '65'],['30', '41', '52', '63'],['20', '31', '42', '53'],['31', '42', '53', '64'],['10', '21', '32', '43'],['21', '32', '43', '54'],['32', '43', '54', '65'],['00', '11', '22', '33'],['11', '22', '33', '44'],['22', '33', '44', '55'],['01', '12', '23', '34'],['12', '23', '34', '45'],['02', '13', '24', '35'],['30', '21', '12', '03'],['40', '31', '22', '13'],['31', '22', '13', '04'],['50', '41', '32', '23'],['41', '32', '23', '14'],['32', '23', '14', '05'],['60', '51', '42', '33'],['51', '42', '33', '24'],['42', '33', '24', '15'],['61', '52', '43', '34'],['52', '43', '34', '25'],['62', '53', '44', '35']]
  end

  def welcome_prompt
    p 'Would you like to play a game?'
    `say Would you like to play a game?`
    lets_go = gets.chomp.downcase
    until lets_go == 'yes' || 'y' do
      puts 'Please answer yes...   or no'
      system 'say hmmm, I dont understand that.'
      lets_go = gets.chomp.downcase
    end
    p 'What name would you like to use on the battlefield?'
    system 'say What would you like me to call you?'
    name = gets.chomp.capitalize
    p 'I am sorry but that name is already in use. I will just call you Penelope'
    system 'say I am sorry but that name is already in use. I will just call you Penelope'
    sleep(2)
    system 'clear'
    play
  end

  def play
    puts "You are playing as X."
    until self.win? == true || self.loss? == true
      @board.render_board
      if @turn.odd?
       puts "Select a column by its letter to place your piece"
       column_choice = gets.chomp.downcase
        @board.update_board(column_choice)
      else
        column_choice = rand(7)
        @board.update_board(column_choice)
      end
    end
    end_game
  end


  def win?
    if @winning_arrays.find { |win| win.uniq == ["X"] }
        @winner = "P"
    end
  end

  def loss?
    if @winning_arrays.find { |loss|  loss.uniq == ["O"] }
      @winner = "C"
    end
  end

  def end_game(condition)
    case: condition
    when "D"
      p "The Game is a Draw"
      system `say You are my equal it seems.`
    when "C"
      p "I won!!!"
      system `say Uh huh Uh huh Uh huh I totally crushed you.``
    when "P"
      p "You won"
      system `say You got luck that time`
    end
    sleep(1.5)
      p "Would you like to play again?"
      system `say Would you like to play again?`
      input = gets.chomp
      if input == 'y' || 'yes'
        system `clear`
        game.welcome_prompt
      else
        p 'Good-Bye'
        system 'say I dont either. Goodbye'
        exit
      end
  end


end
