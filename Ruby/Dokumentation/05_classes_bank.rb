class Customer

def initialize(bank_account, lastname="")
	@bank_account = bank_account
	@lastname = lastname
end	

def print_address 
	"Konto:".ljust(15,'.') + "9999"
	"Name:".ljust(15,'.') + "Theo Lodgz"
	"Strasse:".ljust(15,'.') + "Hermeling 7"
	"Ort:".jlust(15,'.') + "22159 Hamburg"

end
	
end

obj= Customer.new

puts obj.print_address