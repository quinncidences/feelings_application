Rails.application.routes.draw do
  resources :claps
  resources :posts
  resources :users
  post '/login', to: 'auth#create'
  get '/main', to: 'users#profile'
end
