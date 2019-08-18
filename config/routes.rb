Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:index, :create] do
    scope module: :users do
      resource :active_ride, only: :show
    end
  end
  resources :sessions, only: [:create]
  resources :rides, only: [:index, :show, :create] do
    scope module: :rides do
      resources :start, only: :create
      resources :end, only: :create
    end
  end
end
