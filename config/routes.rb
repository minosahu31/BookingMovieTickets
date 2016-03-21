Rails.application.routes.draw do
  devise_for :customers
  resources :movies
  resources :theaters
  resources :bookings
  root "movies#index"

  get 'selected', to: 'bookings#selected', as: :selected
  get 'book_ticket', to: 'bookings#book_ticket', as: :book_ticket

  namespace :admin do
  	resources :movies
  end
  
end
