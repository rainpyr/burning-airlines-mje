Rails.application.routes.draw do
 
# root to home page
get 'pages/home'
root to: 'pages#home'

# roots to login details
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/login' => 'sessions#destroy'  

# API / roots for reservations
get '/reservations' => 'reservations#index'

post '/reservations' => 'reservations#create'


# User resources 
resources :users
resources :planes
resources :flights

end
