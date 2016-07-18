Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'account/homepage'
  root 'account#homepage'
  get 'account/create'
  post 'account/create'
  get 'account/show'
  post 'account/show'
  get 'account/edit'
  root 'account#edit'
  get 'account/update'
  post 'account/update'
  get 'account/delete'
  post 'account/delete'
  get 'account/new'
  post 'account/new'
  get 'account/redirect'
  post 'account/redirect'
end
