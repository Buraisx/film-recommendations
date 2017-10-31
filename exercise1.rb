# Exercise 1 film declarations
documentary = "'Planet Earth'"
drama = "'Titanic'"
comedy = "'Shaun of the Dead'"
dramedy = "'What We do in the Shadows'"
responses = ""

# Checks to see proper answer and combines them
# 1 is YES 2 is NO
def check_answer
	answer = gets.chomp
	if(answer != "yes" && answer != "no")
		abort("Not a correct response.")
	elsif (answer == "yes")
		return "1"
	elsif (answer == "no")
		return "2"
	end
end

# Ask the user which type of film do they like
puts("Do you enjoy documentaries? yes/no")
responses += check_answer

puts("Do you enjoy dramas? yes/no")
responses += check_answer

puts("Do you enjoy comedies? yes/no")
responses += check_answer

# Case statements for responses
case responses
when "121"
	puts "I recommend #{documentary} and #{comedy}."
when "122"
	puts "I recommend #{documentary}."
when "211"
	puts "I recommend #{dramedy}."
when "212"
	puts "I recommend #{drama}."
when "221"
	puts "I recommend #{comedy}."
when "222"
	puts "I recommend Fifty Shades of Grey for people like you."
else
	puts "I recommend #{documentary} and #{drama} and #{comedy}."
end





