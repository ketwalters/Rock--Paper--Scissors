class Hand

	attr_accessor :hand, :robot_hand

	def initialize(hand)
		@throw = hand.downcase
		@robot_hand = robot_hand_shake
		winner(hand, robot_hand)
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
			puts "Woah there"
		end	
	end

	def scissors(robot_hand)
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

	def rock(robot_hand)
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

	def paper(robot_hand)
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