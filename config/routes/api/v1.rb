namespace :v1 do
  resources :recipes, only: [:index, :show] do
    get '/latests', to: 'latests'
  end
  resources :materials, only: [:index, :show]
  resources :material_groups, only: [:index]
  resources :tools, only: [:index]
  resources :techniques, only: [:index]
  resources :colors, only: [:index]
  resources :tastes, only: [:index]
  resources :types, only: [:index]
end
