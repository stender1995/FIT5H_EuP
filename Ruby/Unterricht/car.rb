#1 Erstellen Sie eine Klasse Car mit den Eigesnchaften 
	#ps, typ, verbrauch 
	#Stellen sie sicher, dass die Eigenschaft typ beim ersten Buchstaben einen Großbuchstaben erstellt
	#Stellen sie sicher, dass bei der Eingabe überprüft wird, ob es sich um einem String handelt, der mind 3 Ziffern lang íst 
	#Stellen sie sicher, dass die Instanzvarible ps nur dann gefüllt wird, wenn es sich um einen positiven Wert größer als Null handelt 
#2 Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter zeit, der die Sekundenzahl des Beschleunigungsvorgangs enthält. Ausgegeben wird die erreichte Geschwindigkeit in Km/std. Die Geschwindigkeit wird errechnet aus PS mal sekunden geteilt durch 100.
#3 Erstellen Sie einen Konstruktor, der für doe Eigenschaft ps einen Wert erwartet, für die Eigenschaften typ optional eine Initialisierung ermöglicht.
#4 Legen sie 3 Objekte von dieser Klasse an; Objekt1: ps: 200 typ:'klaumich', Objekt2: ps:80 typ: 'Hauni', Objekt3: ps:100
#5 Speichern Sie die Objkete in einem Array und lassen 
#6 Legen Sie drei weitere Objekte von der Klasse Car an. Die Daten stehen in einem Hash, wobei di erste Position den Typ und die zweite Position die PS enthält: vals = {'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}. Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car-Objekt und legen dieses im Array cars2 ab. 
#7 Erstellen sie eine Klasse 'Driver' mit der Eigenschaft 'name', die im Konstruktor gesetzt werden muss. Es gibt ein Array cars, das im Konstruktor inistalisiert wird. Es gibt eine Methode add_cars mit der für das Driver-Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine Ausgabe show_cars die die Fahrzeuge mit der Typenbezeichnung auflistet. Legen Sie ein Objekt Theo an, ordnen Sie von den Car-Arrays jeweils das erste den Driver-objekt zu. Lassen Sie die Daten der zugeordnetten Fahrezuge ausgeben. 

class Car
	 attr_accessor :verbrauch
	 # wenn man typ ein bestimmten Wert zuweisen will dann=
	 attr_reader :typ, :ps

	 def initialize(ps, typ="")
	 	@ps = ps 
	 	@typ = typ
	 end

	 def ps=(ps)
	 	@ps = ps if ps > 0 
	 	
	 end

	 def typ=(typ)
	 	if 	!typ.is_a?(String) 
	 		puts "Es war kein String"
	 	elsif typ.size >= 3
	 		puts "String zu kurz"
	 	else 
	 		puts typ.size 
	 		#is_a?(String) prüft ob es ein String ist.
	 	 	puts typ.is_a?(String)
	 	 	#to_s = nur zahlen anzeigen lassen 
	 	 	@typ = typ.to_s.capitalize	 			
	 	end
	 end

	 def beschleunigen (zeit)
	 	geschwindigkeit = @ps * zeit / 100 
	 	puts "Die Geschwindigkeit beträgt nun: #{convert_to_kmh(geschwindigkeit)} km pro Stunde."
	 end

	 private 
	 	def convert_to_kmh(var)
	 		var * 3.6
	 	end
end


class Lkw < Car 

	
end



car1 = Car.new(200,'Klaumich')
car2 = Car.new(80, 'Hauni')
car3 = Car.new(100)

	cars = [car1, car2, car3]
	cars.each do |car|

	if car.typ.empty?
##		puts "Kein Wert"
	else
#		puts car.typ 
	end
end 

vals = {'BMW' => 200, 'Trappi' => 150, 'Honda' => 20 }
cars2=[]

	vals.each do |typ, ps|
		cars2 << Car.new(ps,typ)
	end 
#puts cars2.inspect
#puts cars2[2].typ


class Driver 
	attr_accessor :name
	def initialize(name)
		@name = name 
		@cars = []
	end

	def add_cars(car)
		@cars << car
		
	end

	def show_cars
		@cars.each do |car|
			puts car.typ 
	end

	end
end

theo = Driver.new('Theo')
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars