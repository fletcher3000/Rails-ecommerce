Rails.application.routes.draw do

  resources :line_items, only: [:destroy, :create]
  resources :carts
  resources :products

  devise_for :users

  resources :profiles, only: :show

  root 'products#index'
end
