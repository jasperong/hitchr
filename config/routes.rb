Rails.application.routes.draw do
  # root "rides#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :bookings

  resources :users do
    resources :bookings, only: [:show]
    resources :reviews, only: [:show, :new, :create]
  end

  resources :rides do
    resources :bookings
  end

end
