#player.rb
class Player
  attr_reader :player_name, :player_value
  
  def initialize
    puts "Hello, please enter your player name:"  
    @player_name = gets.chomp
    puts "All right #{@player_name}, now choose a symbol:"
    @player_value = gets.chomp
    puts
  end
end
