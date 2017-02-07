class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  	def require_signin
		unless current_user
			redirect_to new_session_url, alert: "Please sign in first!!!"
		end
	end
end
