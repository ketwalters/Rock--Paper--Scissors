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
			"My rock beats your scissors!"
		elsif robot_hand == "laser"
			"Awesome laser melts scissors"
		elsif robot_hand == "scissors" 
			"Two of scissors, cut as one tie"
		elsif robot_hand == "paper"
			"Your scissots cut through paper like a knife through butter."
		else
			"Program Error"
		end
	end

	def rock(robot_hand)
		if robot_hand == "rock" 
			"Our rocks will roll into a tie"
		elsif robot_hand == "laser"
			"My laser blows up your rock!"
		elsif robot_hand == "scissors" 
			"You broke my scissors with your rock!"
		elsif robot_hand == "paper"
			"HAHAHA. I've wrapped your rock with my large paper."
		else
			"Program Error"
		end
	end

	def paper(robot_hand)
		if robot_hand == "rock" 
			"Oh no!  Look what you did to my rock with your paper!"
		elsif robot_hand == "laser"
			"My badass laser burns your paper."
		elsif robot_hand == "scissors" 
			"Cut, cut, cut... My scissors cuts up your paper."
		elsif robot_hand == "paper"
			"Our papers can be made into boats or hats."
		else
			"Program Error"
		end
	end		

	def display
		won
	end

end