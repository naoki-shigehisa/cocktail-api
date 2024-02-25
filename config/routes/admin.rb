resources :recipes, only: [:index, :show, :edit, :update]
resources :materials, only: [:index]
resources :tools, only: [:index]
