# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trainings
  resources :workouts, except: %i[new edit]
  resources :exercises
  # RESTful routes
  resources :examples, except: %i[new edit]
  # get the category by id and then get all exercises within that cat
  get '/category/:id' => 'exercises#show_cat'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
