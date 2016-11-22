class Bibliothek

	attr_accessor :buecher
	attr_reader :name

	def initialize(name)
		@name = name
		@buecher = []
	end

	def add_book(buch)
		
		@buecher << buch
	end


	def output
		@buecher.each do |bu|
			puts bu.autor.name + ", " + bu.titel + ", " + bu.gekauft_am + "."
			
		end
		
	end



	#def buch_aktion(zahl) 
		#if zahl < 2014 
			# @buecher.each do [jo]
			# 	puts 

		
	#end




end

class Buch

	attr_accessor :autor, :gekauft_am, :titel

	def initialize(autor,gekauft_am,titel)
		@autor = autor
		@gekauft_am = gekauft_am
		@titel = titel

	end
	
end

class Autor

	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag

	end
end

bibliothek = Bibliothek.new("Hamburg")

autor_1 = Autor.new("Maier", "20.3.1980")

buch_1 = Buch.new(autor_1, "2005", "Niemand")

buch_2 = Buch.new(autor_1, "2010","Jeder")

buch_3 = Buch.new(autor_1, "2013", "Immer wieder gerne")

buch_4 = Buch.new(autor_1, "2011","Morgen ist auch noch ein Tag")

bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

bibliothek.output