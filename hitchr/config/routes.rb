Rails.application.routes.draw do
  root "rides#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :reviews
  resources :bookings

  resources :users, only: [:show, :new, :create] do
    resources :bookings
  end
  
  resources :rides do
    resources :bookings
  end

end
