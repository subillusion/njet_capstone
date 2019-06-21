Rails.application.routes.draw do
  resources :lists
  root 'lists#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  resources :users
  resources :title do
   resources :description
  end
end
