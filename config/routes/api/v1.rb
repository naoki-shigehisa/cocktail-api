namespace :v1 do
  get '/recipes/latests', to: 'recipes#latests'
  get '/recipes/count', to: 'recipes#count'
  resources :recipes, only: [:index, :show]

  resources :materials, only: [:index, :show]
  resources :material_groups, only: [:index]
  
  resources :tools, only: [:index]
  resources :techniques, only: [:index]
  resources :colors, only: [:index]
  resources :tastes, only: [:index]
  resources :types, only: [:index]
end
