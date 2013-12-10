class Hand

	attr_accessor :hand, :robot_hand, :won

	def initialize(hand)
		@throw = hand.downcase
		@robot_hand = robot_hand_shake
		@won = winner(hand, robot_hand)
		display
	end 

	def robot_hand_shake
		hand = ["rock", "paper", "scissors", "laser"]
		robot_hand = hand[rand(4)]
	end

	def winner(hand, robot_hand)
		case hand
		when "scissors" then scissors(robot_hand)
		when "rock" then rock(robot_hand)
		when "paper" then paper(robot_hand)
		else
			"Woah there"
		end	
	end

	def scissors(robot_hand)
		if robot_hand == "rock" 
			"Rock beats scissors"
		elsif robot_hand == "laser"
			"Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			"Tie"
		elsif robot_hand == "paper"
			"You've won"
		else
			"Program Error"
		end
	end

	def rock(robot_hand)
		if robot_hand == "rock" 
			"Rock beats scissors"
		elsif robot_hand == "laser"
			"Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			"Tie"
		elsif robot_hand == "paper"
			"You've won"
		else
			"Program Error"
		end
	end

	def paper(robot_hand)
		if robot_hand == "rock" 
			"Rock beats scissors"
		elsif robot_hand == "laser"
			"Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			"Tie"
		elsif robot_hand == "paper"
			"You've won"
		else
			"Program Error"
		end
	end		

	def display
		won
	end

end