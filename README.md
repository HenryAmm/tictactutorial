# TicTacToe Tutorial

##What you'll need to start:
###1) Ruby

  -For Windows click here : https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller

  -For Linux/OSx click here: https://rvm.io/rvm/install

###2) Text Editor

  -Atom https://atom.io/

  -Sublime Text http://www.sublimetext.com/3

  -Or your favorite editor

###3) Command Line (Optional)

   -Eventually you'll want to use the terminal, you may as well start now. For this tutorial, you only need to know    how to change directories.

   -Go here: http://cli.learncodethehardway.org/book/ and complete lessons 1-7 (Change directory).

##Tutorial

1) In order to get coloured output on the command line, we will use a Ruby Gem (package)
called 'colored'.

    -To install it, open a terminal and type: *gem install colored*

2) Download the **tictac_ex.rb** file by cloning the Github repository or by clicking on the file and copying it's contents.

3) Open the **tictac_ex.rb** file in a text editor (e.g. Atom, Sublime Text )

4) Open a Terminal window and navigate to the directory containing the **tictac_ex.rb** file.

5) To run the program at any time, type *ruby tictac_ex.rb* .

6) Find the **newgame** method, change the introductory message to a more positive one.
(*puts* : prints a message surrounded by " ")

  - Allow the player to input their name in the *newgame* method.

  - Use the instance variable '@player' and set it equal to *STDIN.gets.chomp*

    - *gets*: 'get string'
    - *chomp*: removes leading or trailing spaces

  - Say hello to the player using **string interpolation**. *puts "Hello #{string}"*

    - replace '*string*' with the name of your variable.

7) Find the player_turn method and complete it.

  - Replace each line of commented text with a line of code.

  - If you need help on the third line (variable increment), look for an example
   elsewhere in the code.

  - To call a method (line 4), you simply type the method name (without the 'def').

8) The end_check method needs to be completed with some logic.
There are three possibilities when checking for the end game:
    -All spaces are occupied (i.e. 9 turns have passed),
    -or at least 4 moves have been made and one player may have won.
    -or only 1-3 moves have been made and you need to keep going.

      -*@turn_number == 10*
      -*@turn_number > 4*

      i)print a message telling the player the game is over.
        tell the program to exit

      ii)call the win_check method

      iii)call the turn method



###Work in progress
 At the moment, the game starts on the player's turn, add a coin_toss method to mix it up a little. The method should:

i) print a message prompting the player to choose 1 or 2 (representing heads or tails) ii) Store the player's input in a variable -The input will be a string, you need to convert it to an integer using the .to_i method. iii) Generate a random integer between 1 and 2 (inclusive) and store it in a variable. -rand(x) will generate a random number from 0 up to, but excluding x.

iv) Call either the comp_turn or player_turn method depending on the result of the 'coin toss'

6) The win_check method is a little unwieldy. Divide the method into 2 new methods: 1 to check for a win, and 1 to announce the win.
