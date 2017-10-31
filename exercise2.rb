# Declarations for movies and responses
# Trying to be lazy
documentary = "'Planet Earth'"
drama = "'Titanic'"
comedy = "'Shaun of the Dead'"
dramedy = "'What We do in the Shadows'"
responses = ""
rating = Array.new(3)

# Checks to see proper answer and combines them
# <=3 is BAD >= 4 is GOOD 
# def check_answer
# 	answer = gets.chomp
# 	if(answer.to_i.between?(1,5) == false)
# 		abort("Not a correct response.")
# 	elsif (answer.to_i >= 4)
# 		return "1"
# 	elsif (answer.to_i <= 3)
# 		return "2"
# 	end
# 
def check_answer
	answer = gets.chomp
	if(answer.to_i.between?(1,5) == false)
		abort("Not a correct response.")
	else
		return answer
	end
end

# Rate the movies
puts("Rate your enjoyment for documentaries. 1-5")
# responses += check_answer
rating[0] = check_answer
puts("Rate your enjoyment for Dramas. 1-5")
# responses += check_answer
rating[1] = check_answer
puts("Rate your enjoyment for comedies. 1-5")
# responses += check_answer
rating[2] = check_answer

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
	if (rating[0] > rating[1] && rating[0] >rating[2])
		puts "I recommend #{documentary}."
	elsif(rating[1] > rating[2] && rating[1] >rating[0])
		puts "I recommend #{drama}."
	elsif(rating[2] > rating[1] && rating[2] >rating[0])
		puts "I recommend #{comedy}."
	end
else
	puts "I recommend Fifty Shades of Grey for people like you."
end
