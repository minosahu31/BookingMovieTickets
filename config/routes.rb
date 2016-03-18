Rails.application.routes.draw do
  devise_for :customers
  resources :movies
  resources :theaters
  resources :bookings
  root "movies#index"

end
