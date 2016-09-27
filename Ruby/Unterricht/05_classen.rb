class Player 





	def initialize(name, health = 100)
		@name = name 
		@health = health
		
	end


	def say_hello
		puts "Ich bin Ludwig mit einem Wert von #{@health}."

	end

	def w00t(value = 0)
		 @health = @health + value
	end

	def blam(value = 0)
		
		@health = @health - value
	end


end


player1 = Player.new("stender",5000)


player1.say_hello


player2 = Player.new("Valid",100)

puts player1.w00t(10) 
puts player1.blam(10) 
