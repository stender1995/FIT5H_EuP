class Kredit 

#konstruktor mit der Eigenschaft 'name'
	def initialize(kunde)
		@kunde = kunde 
	end


#getter methode 
	def kunde
		#über diese und dann über die nächste methode	
		"#{@kunde.adresse}"
		
	end


end





class Kunde

	attr_accessor :name, :gehalt 
	#nur schreibzugriff (EIGENSCHAFT)
	attr_writer :adresse 

#Konstruktor
	def initialize(name)
		@name = name 
	end


	def adresse
		"#{@name}, #{@adresse}"
		
	end

	
end

#objekt erzeugen 
kunde1 = Kunde.new("Theo Sommer")
#Eigenschaft 'name' im Objekt ändern
kunde1.name = "Theo Sonnenschein"
#name ausgeben 
puts kunde1.name
#gehalt auf 2000 setzten 
kunde1.gehalt = "2000"
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
puts kunde1.adresse


#objket erzeugen 
kredit1 = Kredit.new(kunde1)
puts kredit1.kunde
