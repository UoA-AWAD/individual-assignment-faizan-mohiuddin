Rails.application.routes.draw do
  get 'ramen_rate/index'
  root 'ramen_rate#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
