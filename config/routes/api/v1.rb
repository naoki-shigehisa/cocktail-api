namespace :v1 do
  resources :materials, only: [:index, :show]
  resources :material_groups, only: [:index]
end
