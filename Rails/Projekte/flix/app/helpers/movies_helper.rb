module MoviesHelper
	def format_price(movie) 
		if movie.total_gross < 30
			"<strong>Flop</strong>".html_safe
		else
			number_to_currency movie.total_gross, unit: "€", delimiter: ".", format: "%n %u"
		end
		
	end
end
