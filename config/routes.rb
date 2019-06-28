Rails.application.routes.draw do
  get 'sessions/new'

  resources :lists
  root   'lists#index'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  
  resources :users
  resources :title do
   resources :description
  end
end
