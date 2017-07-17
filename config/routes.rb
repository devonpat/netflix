
Rails.application.routes.draw do

  get 'home/index'

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}

	resources :movies
	resources :ratings
	resources :user_movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
