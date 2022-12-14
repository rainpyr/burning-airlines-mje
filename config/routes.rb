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

get '/flights/json' => 'flights#json' # get json for flights

# User resources 
resources :users
resources :planes
resources :flights

get '/users/:name/json' => 'users#index'

get '/plane/json' => 'planes#json'

get '/flights/:destination/json' => 'flights#index_flight_destination'

get '/flights/:origin/:destination/' =>
'flights#index_flight_search'

end
