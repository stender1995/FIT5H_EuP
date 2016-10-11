#1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
puts numbers = (15..20).to_a
#a. geben Sie diese Zahlen in einem Block aus
#b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
array = (15..20).to_a
x = 0 
array.each do|key|
	puts "#{x} - Wert = #{key}"
	x = x + 1 
end 
#c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index 
#nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
array2 = { 0 => 15, 1 => 16, 2 => 17, 3 => 18, 4 => 19, 5 =>20}
array2.each do|key, index| 
	puts "Index#{key}= #{index}"
end 
