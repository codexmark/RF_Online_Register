# config/routes.rb
Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create]
end
