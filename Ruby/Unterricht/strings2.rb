#Erzeugen Sie folgende Ausgaben:

puts "Erzeugen Sie folgende Ausgaben:"

text1 = "larry has a health of 60."
text2 = "Curly has a health of 125"
text3 = "Moe has a health of 100."
text4 = "Shemp"
text5 = "90 health"
name1 = "Players:"
name2 = "Larry"
name3 = "Curly"
name4 = "Moe"
text6 = "The game starded on "
t = Time.now.strftime("%A %d / %m / %G at %R %P")


puts ""
#larry has a health of 60.
puts text1
#Curly has a health of 125
puts text2

#*************Moe has a health of 100.*************
2.times do |variable|
	puts text3.center(50,'*')
end

#Shemp.........................90 health
2.times do |variable|
	puts text4.ljust(30,'.') + text5
end

#Players:
#	Larry
#	Curly
#	Moe


puts "#{name1}\n\t#{name2}\n\t#{name3}\n\t#{name4}"
puts text6 + t