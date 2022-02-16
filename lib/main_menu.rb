require './lib/game'

class MainMenu
  # called from runner
  def welcome_prompt
    system 'clear'
    puts ''
    puts "Welcome to Connect 4! You'll be playing as 'X' today"
    puts "Clearly say 'p' to start the game, or 'q' to quit"
    puts '------------------------------------------------------------------'
    system 'say Hello Professor. Would you like to play a game? Please speak your answer into the microphone slowly and clearly so I can understand you'
    sleep(2)
    system 'say I am sorry, I could not understand you. Instead, please type in your answer'
    input = gets.chomp.downcase

    until input == 'p' || input == 'q' do
      puts "Invalid input: #{input}"
      puts "Type 'p' to start the game, or 'q' to quit"
      system 'say I am sorry, that was not a p or a q.'
      system 'say Please enter a p to play a q to quit or anything else to hear me say this again'
      input = gets.chomp.downcase
    end

    if input == 'p'
      system 'say That is Excellent! Please enter the name you would like me to call you'
      puts "Game Name:"
      puts "Game Name: #{name=gets.chomp}"
      puts "Sorry, That name is already taken. I will just call you Peaches"
      system 'say I am sorry. That name is already taken. I will just call you Peaches'
      sleep(1.5)
      system 'clear'
      go = Game.new.game_start
    elsif input == 'q'
      system 'clear'
      puts "When you feel like quitting, think about why you started "
      system 'say When you feel like quitting, think about why you started'
    else
    end
  end
end
