class Hand

	attr_accessor :throw, :robot_hand

	def initialize(throw)
		@throw = throw
		@robot_hand = robot_hand_shake
		winner(throw, robot_hand)
	end

	def robot_hand_shake
		hand = ["rock", "paper", "scissors", "laser"]
		robot_hand = hand[rand(4)]
	end

	def winner(throw, robot_hand)
		case throw
		when "scissors" then scissors(robot_hand)
		when "rock" then rock(robot_hand)
		when "paper" then paper(robot_hand)
		else
		puts "Woah there"
		end	
	end

	def scissors
		if robot_hand == "rock" 
			puts "Rock beats scissors"
		elsif robot_hand == "laser"
			puts "Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			puts "Tie"
		elsif robot_hand == "paper"
			puts "You've won"
		else
			puts "Program Error"
		end
	end

	def scissors
		if robot_hand == "rock" 
			puts "Rock beats scissors"
		elsif robot_hand == "laser"
			puts "Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			puts "Tie"
		elsif robot_hand == "paper"
			puts "You've won"
		else
			puts "Program Error"
		end
	end

	def scissors
		if robot_hand == "rock" 
			puts "Rock beats scissors"
		elsif robot_hand == "laser"
			puts "Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			puts "Tie"
		elsif robot_hand == "paper"
			puts "You've won"
		else
			puts "Program Error"
		end
	end


				

end