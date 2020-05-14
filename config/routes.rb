Rails.application.routes.draw do
  get 'welcome/index'
  get "/payments/session", to: "payments#get_stripe_id"
  get "/payments/success", to: "payments#success"

  devise_for :users

  resources :listings
  resources :carts, only: [:create, :index]

  root to: 'welcome#index'
end
