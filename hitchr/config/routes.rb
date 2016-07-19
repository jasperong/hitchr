Rails.application.routes.draw do
  root "rides#index"
  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :rides
  resources :reviews
  resources :bookings
end
