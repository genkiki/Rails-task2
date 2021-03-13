Rails.application.routes.draw do


  get 'reserve_infos/new'
  get '/', to: 'top#index'
  get '/users/sign_in', to: 'users#sign_in'
  post '/users/sign_in', to: 'users#login'

  resources :hotels
  resources :users
  resources :reserve_infos

  get '/users/:id/posts', to: 'users#posts'
  get '/users/:id/profile', to: 'users#profile'
  post '/users/:id/profile', to: 'users#profile_edit'
end
