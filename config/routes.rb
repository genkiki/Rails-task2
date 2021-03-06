Rails.application.routes.draw do


  get '/', to: 'top#index'
  get '/users/sign_in', to: 'users#sign_in'
  post '/users/sign_in', to: 'users#login'

  resources :hotels
  resources :users

  get '/users/:id/posts', to: 'users#posts'
  get '/users/:id/profile', to: 'users#profile'
end
