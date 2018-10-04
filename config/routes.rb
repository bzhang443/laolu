Rails.application.routes.draw do
  resources :customers
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
