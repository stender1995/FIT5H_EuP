def movie_listing(movie, rank = 5)
	"Movie: #{movie} ist ein guter Film, mit der Punktzahl: #{rank} am. #{set_time}"
	
end

def set_time
	Time.now.strftime("%d,%m,%Y")
	
end


puts movie_listing("Tschick", ARGV[0])# ARGV'übernimmt die eingegebene Zahl z.b. ruby methoden.rb 4