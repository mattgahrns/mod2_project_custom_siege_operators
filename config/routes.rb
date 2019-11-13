Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/operators', to: 'operators#index'
  get '/operators/new', to: 'operators#new'
  get 'operators/:id/selection', to: 'operators#selection'
  get 'operators/:id', to: 'operators#show'
  post 'operators', to: 'operators#create'
  get 'operators/:id/weapon_selection', to: 'operator_weapons#weapon_selection'
  post 'operator_weapons', to: 'operator_weapons#create'
  post 'operators/:id', to: 'operators#update'
end
