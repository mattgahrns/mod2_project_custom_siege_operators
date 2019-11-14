Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/operators', to: 'operators#index'
  get '/operators/new', to: 'operators#new'
  get 'operators/:id/selection', to: 'operators#selection'
  get 'operators/:id', to: 'operators#show'
  post 'operators', to: 'operators#create'
  get 'operators/:id/weapon_selection', to: 'operator_weapons#weapon_selection'
  post 'operator_weapons/:id', to: 'operator_weapons#create'
  post 'operators/:id', to: 'operators#update'
  get 'operators/:id/secondary_selection', to: 'operator_weapons#secondary_selection'
  post 'operator_weapons/:id/secondary', to: 'operator_weapons#create_secondary'
  resources :users, only: [:new, :create, :edit, :update, :show]
  get 'users/:id/confirm_account_deletion', to: 'users#confirm'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/:id/delete', to: 'users#delete'
  get '/users/:id/account_deleted', to: 'users#destroy'
  get 'users/:id/operators', to: 'users#operators'
end
