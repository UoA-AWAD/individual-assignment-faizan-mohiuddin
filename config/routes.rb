Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to:'sessions#destroy'
  resources :users
  resources :ramen
  get 'ramen_rate/index'
  root 'ramen_rate#index'
  get 'admindash', to:'admindash#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
