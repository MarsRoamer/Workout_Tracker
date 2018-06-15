Rails.application.routes.draw do

	root 'application#home'

	resources :owners, only: [:index, :new, :create, :edit, :update, :show] do 
		resources :gym, only: [:new, :edit, :update, :create] do
			resources :workouts, only: [:new, :create, :edit, :update]
		end
	end
	resources :ownersessions, only: [:new, :create, :destroy]
	resources :sessions, only: [:new, :create, :destroy]
	resources :gym, only: [:index, :show]
	resources :workouts, only: [:index, :show] do
		resources :userworkouts, only: [:new, :create, :edit, :update, :show]
	end
	resources :users, only: [:new, :create, :edit, :update, :show]
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
