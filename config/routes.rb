Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/about'

  resources :users, only: [:index, :show, :edit, :update]

  resources :books do
    resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end

  resources :relationships, only: [:create, :destroy]

  resources :users do
    member do
      get :followings, :followers
    end
  end

end
