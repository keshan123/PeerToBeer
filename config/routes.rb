Rails.application.routes.draw do
  resources :users
   root 'pages#home'

get '/bars' => "users#index"

end
