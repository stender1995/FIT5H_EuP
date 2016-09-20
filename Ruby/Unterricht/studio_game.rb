name1 = "larry"
health = 60.0 #wenn man ein . nach der Zahl erzeugt dann wird es zu ein float

puts "#{name1}'s health is #{health *3}" 
	puts health.class

puts "#{name1}'s health is #{health /9}" 
	puts health.class

health = 60 # ohne Punkt ist es der Typ Fixnum

puts "#{name1}'s health is #{health /9}" 
	puts health.class

comment = "	Players: 
		larry
		curly
		moe" # wird angezeigt wie geschrieben (untereinander)

puts comment

name1 = "Larry"
name2 = "Curly"
name3 = "meo"

puts "players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"

test = comment

puts test