Rails.application.routes.draw do
  root 'login#new'
  resources :sessions, only: [:create, :destroy]
  get 'auth/google_oauth2/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  resources :login, only: [:new, :create] do
    get 'block'
  end
  get 'login/ath'
  resources :hotels do
    get 'new'
  end
  resources :users, only: [:new, :create]
  resources :admin, only: 'show'
  resources :staff, only: [:show]
  resources :maid, only: [:show] do
    get 'cleaning', on: :member
    get 'start', on: :member
    get 'stop', on: :member
    post 'task', on: :member
  end
end