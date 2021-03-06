Rails.application.routes.draw do

  resources :users
  resources :rooms
  resources :reservations
  resources :sessions, only: [:create]
  post '/login', to: "sessions#create"
  get '/profile', to: "users#profile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
