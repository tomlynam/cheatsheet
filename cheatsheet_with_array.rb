@man_pages = ["cp", "mv", "cd", "mkdir", "ls"]

def menu
	puts "CHEATSHEET"
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	puts "*****Make a selection*****"
	user_input = gets.chomp.to_i
end

def command_line
	puts "COMMAND LINE"
	puts "1: cp"
	puts "2: mv"
	puts "3: cd"
	puts "4: mkdir"
	puts "5: ls"
	puts "6: Main Menu"
	user_input = gets.chomp.to_i
	if user_input <= 5
 		puts `man #{@man_pages[(user_input-1)]}`
 	elsif user_input == 6
 	elsif user_input != 6
 		puts "Whoa there! Let's go back to the beginning."
	end
end

def search
	puts "Which page are you looking for?"
	search_term = gets.chomp
	if true
		puts `man #{search_term}`
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