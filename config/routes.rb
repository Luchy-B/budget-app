Rails.application.routes.draw do
  resources :categories do
    resources :operations
  end
  devise_for :users

  resources :users
  
  
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'users#index'
end
