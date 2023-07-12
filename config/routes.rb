Rails.application.routes.draw do
  devise_for :users

  root 'users#index'
  
  resources :category_operations
  resources :users
  resources :operations
  resources :categories
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
end
