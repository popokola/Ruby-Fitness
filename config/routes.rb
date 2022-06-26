Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home", to: "home#index"
  get "contact", to: "contact#index"
  get "users", to: "users#index"


  namespace :admin do
    resources :posts

    root to: "posts#index"
  end
  resources :posts
end
