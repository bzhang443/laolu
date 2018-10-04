Rails.application.routes.draw do
  namespace :api do
    namespace :customer do
      get 'get_info'
      post 'sign_up'
      post 'sign_in'
      post 'reset_pass'
      post 'update_info'
    end
  end

  resources :devices
  resources :sessions
  resources :customers
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
