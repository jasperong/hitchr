Rails.application.routes.draw do
  get 'home/index'

  root "rides#index"
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
