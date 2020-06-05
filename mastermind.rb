class Game
    @@colorlist = ['red','blue','yellow','green']
    attr_accessor :gamemode


  def initialize
    #Initialize the game, by starting up the game loop with the starting options (pvp/pve, picker/chooser)
    while @gamemode != 1 && @gamemode != 2
      self.getMode
    end
  end

  def getMode
    puts "Please pick pvp(1) or pve(2) (type 1 or 2 to select)"
    @gamemode = gets.chomp.to_i

    if @gamemode != 1 && @gamemode != 2
      puts "Please enter a valid input"
    else
      "Gamemode selected, setting up game..."
    end
  end

  def startGame(picker,chooser)
    '''picker picks, chooser chooses which color to enter, both must be Player classes'''
  end

end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

##Test Cases

#Test Case 1 - Selecting gamemode: Working
# test = Game.new
# puts test.gamemode
