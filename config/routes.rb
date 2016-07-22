Rails.application.routes.draw do

  root "home#index"
  get "/search" => "home#search"
  resources :sessions, only: [:new, :create, :destroy]
  resources :reviews
  resources :bookings

  resources :users do
    resources :bookings, only: [:show]
    resources :reviews, only: [:show]
  end

  resources :rides do
    resources :bookings
  end

end
