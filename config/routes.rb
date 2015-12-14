Rails.application.routes.draw do
  resources :patrons
  resources :users
  root 'pages#home'

get '/bars' => "users#index"

get 'admin' => 'admin#index'

get '/home' => 'pages#home'
controller :session do 
  get 'login' => :new
  post 'login' => :create
  delete 'logout' => :destroy
end
end