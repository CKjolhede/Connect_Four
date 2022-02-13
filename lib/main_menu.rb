require './lib/game'

class MainMenu
  def welcome_prompt
    puts ''
    puts "Welcome to Connect 4! You'll be playing as 'X' today"
    puts "Type 'p' to start the game, or 'q' to quit"
    puts '------------------------------------------------------------------'

    input = gets.chomp.downcase

    until input == 'p' || input == 'q' do
      puts "Invalid input: #{input}"
      puts "Type 'p' to start the game, or 'q' to quit"
      input = gets.chomp.downcase
    end

    if input == 'p'
      go = Game.new.game_start
    else
    end
  end
end
