Rails.application.routes.draw do
  
  get '/movies/new', to: "movies#new"
  
  post '/movies', to: "movies#create"

  resources :movies
  #[new, create, edit, update, delete, index, show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
