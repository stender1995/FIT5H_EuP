class Customer

attr_accessor :strasse

def initialize(bank_account, lastname="")
	@bank_account = bank_account
	@lastname = lastname
end	

def print_address 
	"Konto:".ljust(15,'.') + "#{@bank_account}\n" +
	"Name:".ljust(15,'.') + "#{@lastname} \n" +
	"Strasse:".ljust(15,'.') + "#{@strasse} \n" +
	"Ort:".ljust(15,'.') + "22159 Hamburg"

end
	
end

obj = Customer.new(6666, "Klaus")

obj.strasse = "Walterstrasse"

puts obj.print_address