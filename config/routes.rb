Rails.application.routes.draw do
  get 'welcome/index'
  get "/payments/session", to: "payments#get_stripe_id"
  get "/payments/success", to: "payments#success"

  post "/payments/webhook", to: "payments#webhook"

  devise_for :users

  resources :listings
  resources :carts, only: [:create, :index]
  resources :users 

  root to: 'welcome#index'
end
