Rails.application.routes.draw do
  root to: 'users#home'

  get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#view'
  get '/locations', to: 'locations#index'
  get 'locations/new', to: 'locations#new'
  post '/locations', to: 'locations#create'
  get '/locations/:id', to: 'locations#view'
  delete '/locations/:id', to: 'locations#destroy'
  get '/locations/:id/edit', to: 'locations#edit'
  put '/locations/:id', to: 'locations#update'


  # devise_for :users
  devise_for :users, controllers: { sessions: "users/sessions", :registrations => "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
