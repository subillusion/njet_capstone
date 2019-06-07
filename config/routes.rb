Rails.application.routes.draw do
  resources :lists
  root 'lists#index'
  get  '/signup',  to: 'users#new'
  
  resources :users
end
