Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to:'sessions#destroy'
  get '/clearing', to:'sessions#clearing'
  resources :users
  resources :ramen
  post 'ramen/add_to_cart/:id', to: 'ramen#add_to_cart', as: 'add_to_cart'
  delete 'ramen/remove_from_cart/:id', to: 'ramen#remove_from_cart', as: 'remove_from_cart'
  get 'ramen_rate/index'
  root 'ramen_rate#index'
  get 'admindash', to:'admindash#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
