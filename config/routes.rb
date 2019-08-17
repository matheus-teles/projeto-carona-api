Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  resources :rides, only: [:index, :create]
end
