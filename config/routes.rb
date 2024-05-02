Rails.application.routes.draw do
  
  resources :gossips do
    resources :comment 
  end
  
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome, only: [:show]
  resources :user, only: [:show]
  resources :city, only: [:show]
  resources :session, only: [:new, :create, :destroy]

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  root "gossips#index"
  
end
