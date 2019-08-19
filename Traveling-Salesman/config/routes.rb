Rails.application.routes.draw do
  resources :flights
  resources :hotels
  resources :destinations
  resources :itineraries
  resources :salesmen
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
