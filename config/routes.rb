Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  #get "home", to: "home#index"
  get "contact", to: "contact#index"

  get "users", to: "users#index"
  get "signup", to: "users#new"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  
  get "forms", to: "forms#new"
  post "forms", to: "forms#create"

  namespace :admin do
    get "forms", to: "forms#new"
    post "forms", to: "forms#create"
    resources :posts 
  end

  # Create the namespace for the admin area
  # namespace :admin do
  #   resources :users
  #   root to: "users#index"
  # end

  
end
