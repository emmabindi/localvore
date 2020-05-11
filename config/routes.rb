Rails.application.routes.draw do
  # get 'welcome/index'

  resources :listings

  root to: 'welcome#index'
end
