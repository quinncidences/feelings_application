Rails.application.routes.draw do
  resources :claps
  resources :posts
  resources :users
  post '/login', to: 'auth#create'
  get '/posts', to: 'posts#index'
end
