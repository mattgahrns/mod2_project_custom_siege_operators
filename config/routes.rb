Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/operators', to: 'operators#index'
  get '/operators/new', to: 'operators#new'
end
