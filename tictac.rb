require 'colored'
class TicTac
  
  attr_accessor :player, :turn, :turn_number

  def initialize(player)
    @player = player
    @turn = turn
    @turn_number=1
    @cells= []
    @wins=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  end


  def setup_board
    @cells = [
      " "," "," ",
      " "," "," ",
      " "," "," "
            ]
     @choices=[0,1,2,3,4,5,6,7,8]
  end

  def print_board
    puts  "  a b c"
    puts "1 #{@cells[0]}|#{@cells[1]}|#{@cells[2]}"
    puts "  -----"
    puts "2 #{@cells[3]}|#{@cells[4]}|#{@cells[5]}"
    puts "  -----"
    puts "3 #{@cells[6]}|#{@cells[7]}|#{@cells[8]}"
    puts
  end

  def flip_start
    puts "Let's flip a coin to see who starts."
    puts "Enter 1 for heads; 2 for tails >"
    choice = STDIN.gets.to_i
      if (rand(2)+1) == choice
        puts "You go first."
        @turn = player_turn
      else
        puts "I go first."
        @turn = comp_turn
      end
  end

  def player_turn
    puts "It's your turn."
    puts "Turn ##{turn_number}"
    @turn_number+=1
    player_mark
  end

  def comp_turn
    puts "It's my turn."
    @turn_number+=1
    comp_mark
  end

  def player_mark
    print_board
    puts "Where do you want to put your mark?"
    choice = STDIN.gets.chomp
    case choice
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


    choice = @choices.shuffle.pop
    @cells[choice]= "O".blue
    @choices.delete(choice)


    print_board
    end_check
    player_turn
  end

  def board_marker(choice)
    if @choices.include?(choice)
      @cells[choice]= "X".red
      @choices.delete(choice)
      print_board
      end_check
      comp_turn

    else
      puts "That's not a valid choice, make another choice"
      player_turn
    end

  end

  def end_check
      if @turn_number == 10
      puts "GAME OVER, IT'S A DRAW."
      exit(0)
    elsif @turn_number > 3
        win_check
    else
      turn
    end
  end

  def win_check
    player_count = 0
    comp_count = 0
    @wins.each do |sub_array|
      sub_array.each do |cell|
        if @cells[cell-1] == "X".red
          player_count += 1

        elsif @cells[cell-1] == "O".blue
          comp_count +=1
        end

        if player_count == 3
          puts "YOU WIN #{@player}!"
          exit(0)
        elsif comp_count == 3
          puts "You lose."
          exit(0)
        end

    end
    player_count = 0
    comp_count = 0
    end
  end


end

game1= TicTac.new("Your Name")
game1.setup_board
game1.flip_start
