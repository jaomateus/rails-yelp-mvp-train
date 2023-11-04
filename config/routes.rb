Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
