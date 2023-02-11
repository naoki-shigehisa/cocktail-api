namespace :v1 do
  resources :materials, only: [:index, :show]
end
