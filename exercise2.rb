# Declarations for movies and responses
# Trying to be lazy
documentary = "'Planet Earth'"
drama = "'Titanic'"
comedy = "'Shaun of the Dead'"
dramedy = "'What We do in the Shadows'"
rating = Array.new(3)

# Checks to see if answer is between 1-5. if false, abort
def check_answer
	answer = gets.chomp
	if(answer.to_i.between?(1,5) == false)
		abort("Not a correct response.")
	end
	return answer
end

# Rate the movies from 1-5
puts("Rate your enjoyment for documentaries. 1-5")
rating[0] = check_answer.to_i

puts("Rate your enjoyment for Dramas. 1-5")
rating[1] = check_answer.to_i

puts("Rate your enjoyment for comedies. 1-5")
rating[2] = check_answer.to_i


# Checking Ratings
# Documentaries + - - 
if (rating[0] >=4 && rating[1]<=3 && rating[2] <= 3)
		puts "I recommend #{documentary}."
# Dramas - + - 
elsif(rating[0] <=3 && rating[1]>=4 && rating[2] <= 3)
		puts "I recommend #{drama}."
#  Comedies - - + 
elsif(rating[0] <=3 && rating[1]<=3 && rating[2] >= 4)
		puts "I recommend #{comedy}."
#  Dramedies - + +
elsif(rating[0] <=3 && rating[1]>=4 && rating[2] >= 4)
		puts "I recommend #{dramedy}."
#  Everything - - -
elsif(rating[0] <=3 && rating[1]<=3 && rating[2] <=3)
	# Find Highest of the lowest
	if (rating[0] > rating[1] && rating[0] >rating[2])
		puts "I recommend #{documentary}."
	elsif(rating[1] > rating[2] && rating[1] >rating[0])
		puts "I recommend #{drama}."
	elsif(rating[2] > rating[1] && rating[2] >rating[0])
		puts "I recommend #{comedy}."
	else
		puts "I recommend Fifty Shades of Grey for people like you."
	end
else
	puts "I recommend Fifty Shades of Grey for people like you."
end
# IF SOMEONE IS READING THIS COMMENT, PLEASE SOMEONE HELP STREAMLINE AND REVIEW MY CODE
# AND TELL ME GOOD CODING PRACTICES, THIS STUFF IM WRITING LOOKS PRETTY JANK
# SO CODE CLEANUP + SHORTEN PLSKTHX