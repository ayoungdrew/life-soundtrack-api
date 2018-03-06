# frozen_string_literal: true

Rails.application.routes.draw do
  resources :songs
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # If you hear a GET to /doctors
  # route that request to the DoctorsController -> Index action
  get '/songs' => 'songs#index'
  # If you hear a GET to /songs/SOMETHING
  # Save that SOMETHING as a value in the params hash with the key of `id`
  # Then route that request to the DoctorsController -> Show action
  get '/songs/:id' => 'songs#show'
  # If you hear a DELETE to /songs/SOMETHING
  # Save that SOMETHING as a value in the params hash with the key of `id`
  # Then route that request to the DoctorsController -> DESTROY action
  delete '/songs/:id' => 'songs#destroy'
  # If you hear a PATCH to /songs/SOMETHING
  # Save that SOMETHING as a value in the params hash with the key of `id`
  # Then route that request to the DoctorsController -> UPDATE action
  patch '/songs/:id' => 'songs#update'
  # If you hear a POST to /songs
  #
  # Then route that request to the DoctorsController -> CREATE action
  # Use the json that was passed in the request to create the new doctor
  post '/songs/' => 'songs#update'
end
