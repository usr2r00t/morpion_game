#Tic Tac Toe
class Application

  def self.perform
      puts "████████╗██╗░█████╗░  ████████╗░█████╗░░█████╗░  ████████╗░█████╗░███████╗".blue
      puts "╚══██╔══╝██║██╔══██╗  ╚══██╔══╝██╔══██╗██╔══██╗  ╚══██╔══╝██╔══██╗██╔════╝".blue
      puts "░░░██║░░░██║██║░░╚═╝  ░░░██║░░░███████║██║░░╚═╝  ░░░██║░░░██║░░██║█████╗░░".blue
      puts "░░░██║░░░██║██║░░██╗  ░░░██║░░░██╔══██║██║░░██╗  ░░░██║░░░██║░░██║██╔══╝░░".blue
      puts "░░░██║░░░██║╚█████╔╝  ░░░██║░░░██║░░██║╚█████╔╝  ░░░██║░░░╚█████╔╝███████╗".blue
      puts "░░░╚═╝░░░╚═╝░╚════╝░  ░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░  ░░░╚═╝░░░░╚════╝░╚══════╝".blue
      puts
      puts "█▀█ █░█ █▄▄ █▄█".center(70).red 
      puts "█▀▄ █▄█ █▄█ ░█░".center(70).red
      puts
      puts
      puts "/_\\Write the boxes in this format for playing -> A1/B1/..".red
      puts
    game = Game.new
    count = 1
      
    while(true)
      game.turn(game.player1)
      count += 1
        
      if (game.board.victory? == true) || count >= 9
        break
      end
        
      game.turn(game.player2)
      count += 1
        
      if (game.board.victory? == true) || count >= 9
        break
      end
    end
  end
end
