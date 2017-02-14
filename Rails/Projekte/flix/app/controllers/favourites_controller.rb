class FavouritesController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		unless Favourite.where(user_id: current_user.id, movie_id: @movie.id).any?
			@movie.favourites.create(user_id: current_user.id)
			redirect_to @movie, notice: "Movie wurde geliked"
	else 
		redirect_to @movie, alert: "Mehrmals-Like is not really möglich"
		end 
		
	end
	def destroy
		@favourite = Favourite.find(params[:id])
		@favourite.delete
		redirect_to movie_path(params[:movie_id]), alert: "Du hasst erfolgreich einen Dissliked Button gedrückt"	

	end 
end
