Rails.application.routes.draw do

	root 'application#home'

	resources :owners, only: [:index, :new, :create, :edit, :update, :show] do 
		resources :gym, only: [:new, :edit, :update, :create]
	end
	resources :ownersessions, only: [:new, :create, :destroy]
	resources :sessions, only: [:new, :create, :destroy]
	resources :gym, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
