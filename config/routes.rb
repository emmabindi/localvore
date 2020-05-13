Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

  resources :listings
  resources :carts, only: [:create, :index]

  root to: 'welcome#index'
end
