name1 = "Larry"
name2 = "CURLY"
name3 = "Moe"

text1 = "#{name1} has a health of 60"
text2 = "#{name2} has a health of 125"
text3 = "#{name3} has a health of 100"
text4 = "Shemp"
text5 = "90 health"
text6 = "Players: "
text7 = "The game started on Thursday"

puts "#{text1}"
puts "#{text2}"

2.times do 
	puts "#{text3.center(50,'*')}"
end

2.times do 
	puts "#{text4.ljust(30,'.')} #{text5}"
end

puts "#{text6} \n\t #{name1} \n\t #{name2} \n\t #{name3}"

puts "#{text7}"