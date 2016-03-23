Rails.application.routes.draw do
  devise_for :customers
  resources :movies
  resources :theaters
  resources :bookings
  root "movies#index"

  get 'selected', to: 'bookings#selected', as: :selected
  get 'book_ticket', to: 'bookings#book_ticket', as: :book_ticket

  namespace :admin do
    get 'movies_controller/delete'
    post 'movies_controller/update'
    match "movie_update/:movie_id" => "movies_controller#update", via: :patch, as: :admin_movie_update
  	resources :movies_controller
  end

  
end
