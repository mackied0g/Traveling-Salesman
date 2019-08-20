Rails.application.routes.draw do
  resources :logins
  resources :flights
  resources :hotels
  resources :destinations
  resources :itineraries
  resources :salesmen
  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
