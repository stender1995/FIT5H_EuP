Rails.application.routes.draw do
  
	root 'movies#index'
	get 'signup' => 'users#new'
	
	resource :session
  resources :users
	resources :movies do
		resources :favourites
		resources :reviews
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
 