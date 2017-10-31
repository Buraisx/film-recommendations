# Exercise 1 film declarations
documentary = "Planet Earth"
drama = ""
comedy = ""
dramedy = ""
answer = ""
responses = ""

# Ask the user which type of film do they like
puts("Do you enjoy documentaries? yes/no")
responses += check_answer

puts("Do you enjoy dramas? yes/no")
responses += check_answer

puts("Do you enjoy comedies? yes/no")
responses += check_answer

case responses
when "111"
when "121"
when "122"
	puts "I recommend #{documentary}."
when "211"
when "212"
	puts "I recommend #{drama}."
when "221"
	puts "I recommend #{comedy}."
else
end
# if(answer1 == "yes" && answer2 == "no" && answer3 == "no")
# 	puts("I recommend '#{documentary}'")
# end
# if(answer2 == "yes" && answer1 == "no" && answer3 == "no")
# 	puts("I recommend '#{drama}'")
# end
# if(answer3 == "yes" && answer2 == "no" && answer1 == "no")
# 	puts("I recommend '#{comedy}'")
# end



# Checks to see proper answer
def check_answer
	answer = gets.chomp
	if(answer != "yes" && answer != "no")
		puts("Not a correct response.")
		return nil
	elsif (answer == "yes")
		return "1"
	elsif (answer == "no")
		return "2"
	end
end
