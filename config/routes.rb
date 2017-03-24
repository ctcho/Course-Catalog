Rails.application.routes.draw do
  resources :instructors
  resources :subjects
  resources :courses
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/search', to: 'pages#search'
  get '/results', to: 'pages#results'

  resources :users
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
