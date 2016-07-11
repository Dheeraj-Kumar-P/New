App::Application.routes.draw do
  get 'welcome/homepage'
  root 'welcome#homepage'
   resources :statuses
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
