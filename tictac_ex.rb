require 'colored'
class TicTac

  attr_accessor :turn, :turn_number

  def initialize
    #This method  is called when a new TicTac object is created. Variables preceded by a '@' are instance variables
    #(i.e. can be accessed by instances of the class). All methods in the TicTac class have access to these instance variables.
    #If one method changes an instance variable (e.g. @turn_number), this change will be updated for all methods.

    @turn = turn
    @turn_number=1
    @cells= []
    @wins=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    #The @wins instance variable is an array of all possible winning combinations.
  end


  def setup_board
    #The @cells array represents the 9 initially empty spaces on the board.
    #As the game proceeds, the contents of the array will be updated with Xs or Os.
    @cells = [
      " "," "," ",
      " "," "," ",
      " "," "," "
            ]
     @choices=[0,1,2,3,4,5,6,7,8]  #This array keeps track of remaining free spaces.
  end

  def newgame
    puts "You're about to play TicTacToe against a computer. Do you really think you have a chance of winning?"
    puts "Enter your name so I can print it on the consolation prize: "
    #STDIN.gets.chomp is a standard syntax for getting string input.
  end

  def print_board
    #This method displays the board with the updated contents of the @cells array.
    puts  "  a b c"
    puts "1 #{@cells[0]}|#{@cells[1]}|#{@cells[2]}"
    puts "  -----"
    puts "2 #{@cells[3]}|#{@cells[4]}|#{@cells[5]}"
    puts "  -----"
    puts "3 #{@cells[6]}|#{@cells[7]}|#{@cells[8]}"
    puts
  end



  def player_turn
    puts "It's your turn."
    puts "Turn ##{turn_number}"
    @turn_number += 1   #Each turn, the @turn_number instance variable is increased by 1.
    
  end

  def comp_turn
    puts "It's my turn."
    @turn_number += 1
    comp_mark
  end

  def player_mark
    print_board
    puts "Where do you want to put your mark?"
    choice = STDIN.gets.chomp
    case choice
    #This switch block converts user input to an integer. The integer is used to access
    #the corresponding index in the @cells array.
    when  "a1" then choice = 0
    when  "b1" then choice = 1
    when  "c1" then choice = 2
    when  "a2" then choice = 3
    when  "b2" then choice = 4
    when  "c2" then choice = 5
    when  "a3" then choice = 6
    when  "b3" then choice = 7
    when  "c3" then choice = 8
    end
    board_marker(choice)
  end

  def comp_mark
    #The computer randomly chooses an empty cell to put its mark
    choice = @choices.shuffle.pop
    @cells[choice]= "O".blue
    #The computer updates the @choices array by removing the move it just made.
    @choices.delete(choice)
    print_board
    end_check
    player_turn
  end

  def board_marker(choice)
    if @choices.include?(choice)  #Checks that the user input is valid
      @cells[choice]= "X".red
      @choices.delete(choice)
      print_board
      end_check  #Calls the end_check method to see if the game is over.
      comp_turn

    else  #If the user didn't input a valid choice...
      puts "That's not a valid choice, make another choice"
      player_turn
    end

  end

  def end_check
      if @turn_number == 10
      puts "GAME OVER, IT'S A DRAW."
      exit(0)
    elsif @turn_number > 4   #if at least 5 moves have been made, check for a winner
        win_check
    else
      turn
    end
  end

  def win_check
    player_count = 0
    comp_count = 0
    #This each loop goes through each @wins combination.
    @wins.each do |sub_array|
      sub_array.each do |cell|
        if @cells[cell-1] == "X".red
          player_count += 1

        elsif @cells[cell-1] == "O".blue
          comp_count +=1
        end
        #IF either the player or computer has 3 marks corresponding to one of the
        #@wins subarrays, they win.

        if player_count == 3
          puts "YOU WIN #{@player}!"
          exit(0)
        elsif comp_count == 3
          puts "You lose- I warned you."
          exit(0)
        end

    end
    #reset the counts for each @wins combination checked.
    player_count = 0
    comp_count = 0
    end
  end


end

game1= TicTac.new  #Creates a new instance of the TicTac class called 'game1'
game1.setup_board
game1.newgame
game1.player_turn  #Calls the player_turn method on the game1 object.
