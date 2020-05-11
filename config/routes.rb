Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'

  resources :listings

  root to: 'welcome#index'
end
