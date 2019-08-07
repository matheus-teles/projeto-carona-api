Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :rides
end
