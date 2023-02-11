Rails.application.routes.draw do
  resources :orders
  resources :breads
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/hello', to: 'application#hello_world'

# user routes
  # get '/users', to: 'user#index'
  # get '/users/:id', to: 'user#show'
  # patch '/users/:id', to: 'user#update'
  # post '/users', to: 'user#create'
  # delete '/users/:id', to: 'user#destroy'



end
