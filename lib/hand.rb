class Hand

	attr_accessor :hand, :robot_hand, :won

	def initialize(hand)
		@throw = hand.downcase
		@robot_hand = robot_hand_shake
		@won = winner(hand, robot_hand)
		display
	end 

	def robot_hand_shake
		hand = ["rock", "paper", "scissors", "lizard", "spock"]
		robot_hand = hand[rand(5)]
	end

	def winner(hand, robot_hand)
		case hand
		when "scissors" then scissors(robot_hand)
		when "rock" then rock(robot_hand)
		when "paper" then paper(robot_hand)
		when "lizard" then lizard(robot_hand)
		when "spock" then spock(robot_hand)
		else
			"Does not compute.  Cheating?"
		end	
	end

	def scissors(robot_hand)
		if robot_hand == "rock" 
			"My rock crushes your scissors!"
		elsif robot_hand == "spock"
			"Spock smashes your scissors!"
		elsif robot_hand == "scissors" 
			"Two of scissors, cut as one tie"
		elsif robot_hand == "paper"
			"Your scissors cut my paper."
		elsif robot_hand == "lizard"
			"Your scissors decapitates my lizard."
		else
			"Program Error"
		end
	end

	def rock(robot_hand)
		if robot_hand == "rock" 
			"Our two rocks can only roll."
		elsif robot_hand == "spock"
			"Spock vaporizes your rock."
		elsif robot_hand == "scissors" 
			"You crushed my scissors!"
		elsif robot_hand == "paper"
			"My paper covers your rock."
		elsif robot_hand == "lizard"
			"Your rock crushes my lizard."
		else
			"Program Error"
		end
	end

	def paper(robot_hand)
		if robot_hand == "rock" 
			"Your paper covered my rock!"
		elsif robot_hand == "spock"
			"My paper disproves your logic Mr. Spock."
		elsif robot_hand == "scissors" 
			"Your paper is cut by my scissors."
		elsif robot_hand == "paper"
			"Our papers can be made into boats or hats."
		elsif robot_hand == "lizard"
			"The lizard eats your paper."
		else
			"Program Error"
		end
	end		

	def lizard(robot_hand)
		if robot_hand == "rock" 
			"Rock crushes lizard!"
		elsif robot_hand == "spock"
			"Lizard poisons Spock."
		elsif robot_hand == "scissors" 
			"Scissors decapitates lizard."
		elsif robot_hand == "paper"
			"Lizard eats paper."
		elsif robot_hand == "lizard"
			"Two lizards sitting on a tree..."
		else
			"Program Error"
		end
	end	


	def spock(robot_hand)
		if robot_hand == "rock" 
			"Spock vaporizes rock!"
		elsif robot_hand == "spock"
			"Two Spocks in the same time line... highly illogical."
		elsif robot_hand == "scissors" 
			"Spock smashes scissors."
		elsif robot_hand == "paper"
			"The paper disproved Spock's logic..."
		elsif robot_hand == "lizard"
			"Lizard poisons Spock."
		else
			"Program Error"
		end
	end		


	def display
		won
	end

end