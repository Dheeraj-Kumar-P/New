Rails.application.routes.draw do
  get 'user/login'
  root 'user#login'
  get 'user/submit'
  post 'user/submit'
  get 'user/create'
  post 'user/create'
  get 'user/valid'
  root 'user#valid'
  get 'user/invalid'
  root 'user#invalid'
  get 'user/new'
  post 'user/new'
  root 'user#new'
  get 'user/redirect'
  post 'user/redirect'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
