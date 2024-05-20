# config/routes.rb
Rails.application.routes.draw do
  resources :kittens
  get '/kittens/:id', to: 'kittens#show'
  # Set the default route to kittens#index
  root 'kittens#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
