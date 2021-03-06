Rails.application.routes.draw do

  root "welcome#home"

  resources :users, only: [:new, :create, :show]

  resources :attractions

  resources :rides

  get "/signin", to: "sessions#new"

  post "/signin", to: "sessions#create"

  get "logout", to: "sessions#destroy"

end
