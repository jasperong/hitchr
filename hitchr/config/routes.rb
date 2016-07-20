Rails.application.routes.draw do
  root "rides#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :reviews
  resources :bookings

  resources :users do
    resources :bookings
    resources :reviews
  end

  resources :rides do
    resources :bookings
  end

end
