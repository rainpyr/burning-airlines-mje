Rails.application.routes.draw do


  get 'pages/home'
  root to: "pages#home"

 
  resources :planes


  get 'flights/new'
  get 'flights/create'
  get 'flights/index'
  get 'flights/show'
  get 'flights/edit'
  get 'flights/update'
  get 'flights/destroy'


end
