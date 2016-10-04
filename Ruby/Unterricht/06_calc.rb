class Calculator

	def initialize(zahl1, zahl2)
		@zahl1 = zahl1 
		@zahl2 = zahl2 
		
	end

	def add
		erg = @zahl1 + @zahl2
	end

	def subtract 
		erg = @zahl1 - @zahl2
	end
	
end

obj = Calculator.new(10,5)


puts obj.add
puts obj.subtract
