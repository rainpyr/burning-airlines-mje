Rails.application.routes.draw do
 
# root to home page
get 'pages/home'
root to: 'pages#home'

# roots to login details
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/login' => 'sessions#destroy'   


# User resources 
resources :users
resources :planes
resources :flights

get '/plane/json' => 'planes#json'

end
