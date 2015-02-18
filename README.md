# TicTacToe Tutorial

1) Download the **tictac_ex.rb** file by cloning the Github repository or by clicking on the file and copying it's contents. 

2) Open the **tictac_ex.rb** file in a text editor (e.g. Atom, Sublime Text ) 

3) Open a Terminal window and navigate to the directory containing the **tictac_ex.rb** file.

4) To run the program, type ruby tictac_ex.rb.

5) Find the *newgame* method, change the introductory message to a more positive one. 
(*puts* : prints a message surrounded by " ") 

  - Allow the player to input their name in the *newgame* method.

  - Use the instance variable '@player' and set it equal to *STDIN.gets.chomp*
  
    - *gets*: 'get string' 
    - *chomp*: removes leading or trailing spaces
    
  - Say hello to the player using string interpolation. *puts "Hello #{string}"* 
    
    - replace '*string*' with the name of your variable.

 At the moment, the game starts on the player's turn, add a coin_toss method to mix it up a little. The method should:

i) print a message prompting the player to choose 1 or 2 (representing heads or tails) ii) Store the player's input in a variable -The input will be a string, you need to convert it to an integer using the .to_i method. iii) Generate a random integer between 1 and 2 (inclusive) and store it in a variable. -rand(x) will generate a random number from 0 up to, but excluding x.

iv) Call either the comp_turn or player_turn method depending on the result of the 'coin toss'

6) The win_check method is a little unwieldy. Divide the method into 2 new methods: 1 to check for a win, and 1 to announce the win.

def flip_start puts "Let's flip a coin to see who starts." puts "Enter 1 for heads; 2 for tails >" choice = STDIN.gets.to_i if (rand(2)+1) == choice puts "You go first." @turn = player_turn else puts "I go first." @turn = comp_turn end end
