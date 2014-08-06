###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game.
# In this game players have three tries to guess a secret number between 1 and 10.
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game.
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#		and that they only have 3 tries to do so.
#
#	Functionality:
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################





# METHOD TO GET USER GUESSES
def get_guess
    gets.chomp.to_i
end

# METHOD TO COMPARE USER GUESSES TO COMPUTER GUESS. HAD SOME VARIABLE SCOPE ISSUES HERE THAT COULDN'T 100% FIGURE OUT. METHOD IS CREATING A NEW COMPUTER GUESS VALUE WITH EACH ITERATION OF .DOWNTO LOOP
def compare(n)
    computer_guess = 1 + rand(10)
    if computer_guess == n
        puts "Holy crap! I can't believe you guessed it on your first try! Well done!"
    elsif computer_guess > n
        puts "Not quite. You're a little too high. Try again."
    else
        puts "Ooo. So close. Try something a little higher."
    end
end

# BEGIN USER INTERACTION/INTRO STORY

puts "Welcome to the game Secret Number!"
puts "This game was created by a pretty cool guy named Jeff. Let's play!"
puts "What is your name?"
user_name = gets.chomp
puts "Awesome! Hi #{user_name}!"
puts "Now comes the fun part."
puts "I'm going to think of a number between 1 and 10, and you have to try to guess it! But you only have 3 tries so choose carefully."
puts "Thinking..."
puts "Ok, got it. What is your first guess?"
user_guess = get_guess

# HACK TO GET FINAL COMPUTER GUESS TO DISPLAY
computer_guess = 1 + rand(10)

# ITERATION OF NUMBER OF GUESSES LEFT
2.downto(1) do |guesses_left|
    result = compare(user_guess)
    get_guess
    if guesses_left == 1
        puts "Sorry. You didn't guess the secret number (which was #{computer_guess}), btw. You lose."
    end
end