# frozen_string_literal: true

Rails.application.routes.draw do
  resources :phases
  resources :favorite_songs
  resources :songs
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/songs' => 'songs#index'
  get '/songs/:id' => 'songs#show'
  delete '/songs/:id' => 'songs#destroy'
  patch '/songs/:id' => 'songs#update'
  post '/songs/' => 'songs#update'
end
