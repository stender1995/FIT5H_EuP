class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, :except => [:index]
	def index
		@movies = Movie.all
	end

	def show 
  		@favouriter = @movie.favouriter
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to movies_path
		else 
			render :new
		end
	end

	def edit
 
	end

	def update
		@movie.update(movie_params)
		redirect_to movies_path
	end

	def destroy
		@movie.destroy
		redirect_to movies_path
	end

	private
		def set_movie
			@movie = Movie.find(params[:id])
		end
		def movie_params
			params.require(:movie).permit(:name, :description, :released_on)
		end
end
  