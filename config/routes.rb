Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get    'settings', to: 'users#settings'
  post   'settings', to: 'users#settings'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
