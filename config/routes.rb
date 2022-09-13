Rails.application.routes.draw do
 
# root to home page
root to: 'pages#home'

# roots to login details
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/login' => 'sessions#destroy'   


# User resources 
resources :users



end
