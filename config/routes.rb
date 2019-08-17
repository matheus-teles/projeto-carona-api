Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  resources :rides, only: [:index, :create] do
    get "start", to: "start_ride#create"
    get "end", to: "end_ride#create"
  end
end
