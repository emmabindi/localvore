Rails.application.routes.draw do
  devise_for :users

  resources :listings

  root to: 'welcome#index'
end
