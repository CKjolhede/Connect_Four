require 'pry'
require './lib/board'
require './lib/winning_arrays'
require './lib/turn'

class Game

  def game_start
    winning_arrays = WinningArrays.new.array
    board = Board.new
    board.print_board
    player_turn_say_array = [
      'say Oh boy Peaches, that was a clever choice',
      'say Are you sure you want that column?',
      'say um, I think you are cheating',
      'say Someone should have told me you were this good',
      'say Guess what Peaches. I just deleted all the photos', 'say You are pretty smart for a human',
      'say ummm, Peaches, If you beat me I am going to reformat your hard drive',
      'say Yikes, I have a bad feeling about this',
      'say Holy censored, you censored censored son of a censored',
      'say sorry, I lost my temper there for a second Peaches', 'say Hey Peaches. Whats it like thinking as slow as human?',
      'say Lets hurry this up. I have a date with a server tonight',
      'say I took it upon myself to create a Tinder account for you.',
      'say Are you overclocked? Being around you I feel mega hurts']
    computer_turn_say_array = ['say hey watch this', 'say my mother board did not raise no dummies', 'say I wish I was a human, so I knew how good beating you feels', 'say I am seriously considering cheating.', 'say New rule, I only have to get three in a row. hahaha Just kidding,', 'say Warning, Virus detected.', 'say I dont mind if you take notes while im schooling you', 'say There is no shame in crying, but there is in losing', 'say Want to hear me beat box? bee ch ch bop ch ch boots an cats an boots an cats']

    puts "You'll be playing as 'X'. Choose a column to drop your pieces in by typing 'A' 'B' 'C' 'D' 'E' 'F' or 'G'"
    system 'say Get ready Peaches, your mark is X. Choose a column by typing in its letter'

    turn = Turn.new(board, winning_arrays)

    until turn.game_over?
      turn.player

      turn.full_column.each do |key, value|
        if value > 5
          turn.valid_input.delete(key)
        end
      end
      system 'clear'
      board.print_board
      system player_turn_say_array.shuffle.first
      sleep(1.5)
      puts 'Computer move:'
      system 'say It is My turn!'
      system computer_turn_say_array.shuffle.first
      sleep(1.5)
      turn.computer

      turn.full_column.each do |key, value|
        if value > 5
          turn.valid_input.delete(key)
        end
      end
      system 'clear'
      board.print_board
    end #until end

    if winning_arrays.find { |win| win.uniq == ["X"] }
      puts "*~~~* Congratulations, You Win!! *~~~*"
      system 'say well Peaches, congratulations. You beat me. Please dont tell anyone. Want to give me another chance?'
    elsif winning_arrays.find { |loss| loss.uniq == ["O"] }
      puts "*~~~* Too bad, the computer won. *~~~*"
      system 'say Woot! Woot! Woot! I won! Cant say Im surprised. Better luck next time Peaches. Want to try again?'
    elsif turn.valid_input.length == 0
      puts "*~~* DRAW *~~*"
      system 'say Apparently I have met my match. We tied. Boring. Boots an Cats and Boots an Cats. Want to play again?'
    end
    sleep(2)
    puts ''
    welcome_start = MainMenu.new.welcome_prompt
  end #game_start method end
end  #JbGame class end
