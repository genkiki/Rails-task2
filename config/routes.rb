Rails.application.routes.draw do


  get '/', to: 'top#index'
  get '/users/sign_in', to: 'users#sign_in'

  resources :hotels
  resources :users

  get '/users/:id/posts', to: 'users#posts'
end
