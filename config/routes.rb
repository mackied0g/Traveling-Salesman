Rails.application.routes.draw do
 
  get 'home/index'
  resources :flights
  resources :hotels
  resources :destinations
  resources :itineraries
  resources :salesmen
  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  delete '/logout', to: 'login#destory'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
