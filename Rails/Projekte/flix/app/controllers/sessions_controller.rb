class SessionsController < ApplicationController
	def new
	end
	def create
		user = User.find_by(email: params[:email])	#prüft ob email in DB vorhanden ist
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back #{user.name}."
			redirect_to root_path
		else
			flash.now[:alert]	#speicher die Fehlinformation im hintergrund für den render
			render :new 	# gehe zu views/sessions/new.html.erb
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Ausgeloggt. Bye, bye love."
	end
end
