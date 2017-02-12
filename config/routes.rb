Rails.application.routes.draw do
  resources :orders

  root 'orders#index'

  resources :users, only: [:new, :create]
  get '/register', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
