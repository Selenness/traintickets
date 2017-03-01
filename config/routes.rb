Rails.application.routes.draw do
  resources :trains do
    resources :cars, shallow: true
  end
  resources :railway_stations do
    member do
      patch :update_position
      patch :update_time
    end
  end
  root 'trains#index'
  resources :routes
  resource :search, only: [:show] do
    post :perform, on: :collection
  end

  resources :tickets, only: [:show, :new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
