Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:create]
  resources :sessions, onle: [:create]
end
