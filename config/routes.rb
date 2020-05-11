Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

  resources :listings

  root to: 'welcome#index'
end
