Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, except: [:new]
  end