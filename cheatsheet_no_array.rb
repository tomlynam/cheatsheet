def menu
	puts "CHEATSHEET"
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	puts "*****Make a selection*****"
	user_input = gets.to_i
end

def command_line
	puts "COMMAND LINE"
	puts "1: cp"
	puts "2: mv"
	puts "3: cd"
	puts "4: mkdir"
	puts "5: ls"
	puts "6: Main Menu"
	user_input = gets.to_i
	puts `man cp` if user_input == 1
	puts `man mv` if user_input == 2
	puts `man cd` if user_input == 3
	puts `man mkdir` if user_input == 4
	puts `man ls` if user_input == 5
	if user_input == 6
	elsif user_input != 6
 		puts "Whoa there! Let's go back to the beginning."
	end
end

def search
	puts "Which page are you looking for?"
	search_term = gets.chomp
	if search_term == 'cp'
		puts `man cp`
	elsif search_term == 'mv'
		puts `man mv`
	elsif search_term == 'cd'
		puts `man cd`
	elsif search_term == 'mkdir'
		puts `man mkdir`
	elsif search_term == 'ls'
		puts `man ls`
	else 
		puts "Could not find that page. Sorry!"
	end
end

while true
	case menu
	when 1
		command_line
	when 2
		search
	when 3
		exit
	else
		puts "Bad Input, Please Try Again."
		menu
	end
end