class Player

	def initialize(name,health = 100)
		@name = name
		@health = health
	end 

def set_time
	Time.new.strftime("%H:%M")
	
end

def say_hello1(health=100)

	"Ich bin Ludwig mit einem Wert von #{health} um #{set_time}"
	
end

def blam
	@health = @health + 10
end

def wOOt
	puts "Tom got"
	 @health = @health - 10
end



end

player1 = Player.new("walter")

player2 = Player.new("Peter")

puts player1.say_hello1

puts player1.blam

puts player1.wOOt
