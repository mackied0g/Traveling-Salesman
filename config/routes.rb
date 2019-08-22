Rails.application.routes.draw do
  resources :flights
  resources :hotels
  resources :destinations
  resources :itineraries
  resources :salesmen
  root to: 'home#index'

  get 'splash/index' 

  get 'home/index'
  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  delete '/logout', to: 'login#destroy'
  get '/dashboard', to: 'splash#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#whaaaazaaaaaaa
#whaassaaaaaaaaa