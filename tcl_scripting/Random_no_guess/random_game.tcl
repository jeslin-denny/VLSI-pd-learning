# Giving values for variable min and max:
#set min 0
#set max 20

# Code to generate a random number.
set randNum [expr {round($min + (rand() * ($max - $min)))}]

# Created a procedure called "rand" to generate a random number and guessing the number.
proc rand {} {
#puts -nonewline "Guess a number from 1 to 20:"
#	flush stdout
#	set no [gets stdin]

#set min 0
#set max 20

# Getting input from the user for $min and $max.
	puts -nonewline "Set the lower limit:"
	flush stdout
	set min [gets stdin]

	puts -nonewline "Set the upper limit:"
	flush stdout
	set max [gets stdin]

# Initializing while loop.
while {1} {

# code to generate a random number.
	set randNum [expr {round($min + (rand() * ($max - $min)))}]

# Getting input from the user [the guess number]
	puts -nonewline "Guess a number from 1 to 20:"
	flush stdout
	set no [gets stdin]

	if { $no eq "exit" || $no eq "quit" } {
		puts "Exitting"
		break
	} elseif {$no > 20} {
		puts "Enter a valid number"
	} elseif { $no == $randNum } {
		puts "Yayyyy! You guessed right. You WON!"
		puts "Do you want to play again(Y/n):"
		flush stdout
		set val [gets stdin]
		#break
	} else {
		puts "Better luck next time. The random number is $randNum"
	#	break
		
	if {$val eq Y} {
		puts "continuing the game"
	} else {
		break
	}
	}
	}
}
