Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
#  get   'repost', to: 'microposts#repost'
  
  resources :users do
    member do
      get :followings, :followers
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts do
    member do
      get :repost
    end
  end
  resources :relationships, only: [:create, :destroy, :show]
end