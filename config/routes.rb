Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  resources :rides, only: [:index, :show, :create]
    scope module: :rides do
      resources :start, only: :create
      resources :end, only: :create
    end
  end
end
