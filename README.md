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

    - To install it, open a terminal and type:


    gem install colored
    [You may need to run the command as a superuser (or root) 
    by putting sudo infront to make the whole command 
    'sudo gem install colored' - Mac/Linux Only]

2) Download the **tictac_ex.rb** file by cloning the Github repository or by clicking on the file and copying it's contents.


3) Open the **tictac_ex.rb** file in a text editor (e.g. Atom, Sublime Text )


4) Open a Terminal window and navigate to the directory containing the **tictac_ex.rb** file.


5) To run the program at any time, type

    ruby tictac_ex.rb


6) Find the **newgame** method, change the introductory message to a more positive one.
(*puts* : prints a message surrounded by " ")

  - Allow the player to input their name in the *newgame* method.

  - Use the instance variable '@player' and set it equal to *STDIN.gets.chomp*

    -*gets*: 'get string'

    -*chomp*: removes leading or trailing spaces

  - Say hello to the player using **string interpolation**.

    -*puts "Hello #{string}"*

    - replace '*string*' with the name of your variable.


7) Find the *player_turn* method and complete it.

  - Replace each line of commented text with a line of code.

  - If you need help on the third line (variable increment), look for an example
   elsewhere in the code.

  - To call a method (line 4), you simply type the method name (without the 'def').


8) The *end_check* method needs to be completed with some logic.

There are three possibilities when checking for the end game:

    -All spaces are occupied (i.e. 9 turns have passed), (@turn_number > 10)

    -or at least 4 moves have been made and one player may have won. (@turn_number > 4)

    -or only 1-3 moves have been made and you need to keep going.


  Look at the *win_check* method for clues as to the structure. See the *if* and *else*
  statements? You have 3 conditions, so will need 3 statements (*if, elsif, else*)

      i) Print a message telling the player the game is over.
         Tell the program to exit (See win_check method)

      ii) Call the win_check method

      iii) Call the turn method


9) At the moment, the game starts on the player's turn, add a *coin_toss* method
 to mix it up a little. The method should

    i) print a message prompting the player to choose 1 or 2
    (representing heads or tails)

    ii) Store the player's input in a variable. The input will be a string, you
     need to convert it to an integer using the *.to_i* method.

        - methods can be 'chained' together like this: *choice.chomp.downCase*

        - This example takes the variable 'choice' and removes extra whitespace(chomp),
        then it converts the 'choice' string to lowercase letters.

        - There is no real limit to the number of methods you chain together, though
        practically 2 or 3 is standard.

    iii) Generate a random integer between 1 and 2 (inclusive) and store it in a
    variable.

     - rand(x) will generate a random number from 0 up to, but excluding x.

     - e.g. -rand(10) will generate a random number from 0 to 9.

     -Remember, you want 1 or 2, not 0 or 1. How will you do that?

    iv) Call either the comp_turn or player_turn method depending on the result
    of the 'coin toss'

10) The *win_check* method is a little unwieldy.

  Divide the method into 2 new methods: 1 to check for a win, and 1 to announce the win.


##AI Challenge - Design an AI for the game to make the computer a little smarter.
###This challenge requires extra thought and may require some online research into Ruby methods.

 The AI should check for the best move rather than making a random move. The decisions
 should be:

    - 1) Can I win by completing a row?
    - 2) Can I win by completing a diagonal?
    - 3) If the player can win next turn, block them.
    - 4) If the centre is unoccupied, take it.
    - 5) If a corner is unoccupied, take it.
    - 6) Otherwise, make a random move.


 The AI will consist of either a single method or separate methods for each of the
 above decisions. You may need to create additional helper methods.

 This can be done using only commands already present in the code.

  One approach might be to create a copy of board (use '@cells.dup' to duplicate the board).

   Then the computer could play a test move in the board copy and see if it leads to a win.
   If so, make that move in the 'real' board.

   You will probably need to use some logic (i.e if, elsif, elsif, else), possibly inside
   a 'while' loop.

###Good Luck!
