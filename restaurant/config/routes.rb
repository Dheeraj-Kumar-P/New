Rails.application.routes.draw do
  get 'menu/home'
  post 'menu/home'
  root 'menu#home'
  get 'menu/create'
  post 'menu/create'
  get 'menu/new'
  post 'menu/new'
  get 'menu/new_customer'
  post 'menu/new_customer'
  get 'menu/show'
  post 'menu/show'
  get 'menu/create_customer'
  post 'menu/create_customer'
  get 'menu/order'
  post 'menu/order'
end
 