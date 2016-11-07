def time
	Time.new.strftime("%H:%M")
end 

def say_hello(health = 100)
	 "Ich bin Ludwig mit einem Wert von #{health} um #{time}"
end

puts say_hello

