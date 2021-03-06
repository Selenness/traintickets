Rails.application.routes.draw do
  devise_for :users

  resource :search, only: [:show] do
    post :perform, on: :collection
  end

  resources :tickets, only: [:show, :new, :create, :index, :destroy]


  namespace :admin do
    resources :trains do
      resources :cars, shallow: true
    end

    resources :railway_stations do
      member do
        patch :update_position
        patch :update_time
      end
    end

    resources :routes
    resources :tickets
  end

  root 'searches#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
