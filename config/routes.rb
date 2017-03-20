Rails.application.routes.draw do
  get '/home', to: 'pages#home'

  get 'signup', to: 'pages#signup'

  resources :users

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
